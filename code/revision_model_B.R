## Refit Model B and extract ASD simple slope for Touch
suppressMessages({
  library(dplyr); library(tidyr); library(readr); library(lme4)
})

main    <- read.csv("Clean_MainAnalysis_Data.csv", check.names = FALSE,
                    fileEncoding = "UTF-8-BOM")
trials  <- read.csv("test_trials_long.csv")
eng     <- read.csv("engagement_overall_means.csv")

# Children with >= 4 of 12 valid trials
include_pids <- trials %>% group_by(pid) %>%
  summarise(pct = mean(!is.na(correct)), .groups = "drop") %>%
  filter(pct >= 4/12) %>% pull(pid)

base <- trials %>%
  filter(pid %in% include_pids, !is.na(correct)) %>%
  left_join(main %>% select(PID, Condition),
            by = c("pid" = "PID")) %>%
  left_join(eng, by = "pid") %>%
  mutate(group = factor(ifelse(Condition == 0, "Autistic", "Non-autistic"),
                        levels = c("Non-autistic", "Autistic")))

scale_var <- function(x) as.numeric(scale(x))

dB <- base %>%
  filter(complete.cases(pick(Proximity, Touch, Communication, Eye, Emotion))) %>%
  mutate(across(c(Proximity, Touch, Communication, Eye, Emotion),
                scale_var, .names = "z_{.col}"))

cat("Model B: N kids =", dplyr::n_distinct(dB$pid),
    " | N trials =", nrow(dB), "\n")
cat("Sample by group:\n"); print(table(dB %>% distinct(pid, group) %>% pull(group)))

ctrl <- glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 2e5))
mB <- glmer(correct ~ group * (z_Proximity + z_Touch + z_Communication +
                                 z_Eye + z_Emotion) + (1 | pid),
            data = dB, family = binomial, control = ctrl)
cat("\n--- Model B coefficients ---\n")
print(round(summary(mB)$coefficients, 4))

cat("\n--- ASD simple slope for Touch via linear combination ---\n")
# In the model with group=Non-autistic as reference,
#   ASD-Touch slope = z_Touch + groupAutistic:z_Touch
b_main   <- fixef(mB)["z_Touch"]
b_inter  <- fixef(mB)["groupAutistic:z_Touch"]
V <- vcov(mB)
se_asd <- sqrt(V["z_Touch", "z_Touch"] +
                V["groupAutistic:z_Touch", "groupAutistic:z_Touch"] +
                2 * V["z_Touch", "groupAutistic:z_Touch"])
b_asd  <- as.numeric(b_main + b_inter)
z_asd  <- b_asd / se_asd
p_asd  <- 2 * pnorm(-abs(z_asd))
cat(sprintf("ASD Touch slope:  b = %.4f, SE = %.4f, z = %.3f, p = %.4f\n",
            b_asd, se_asd, z_asd, p_asd))

cat("\n--- NT simple slope for Touch ---\n")
b_nt   <- as.numeric(b_main)
se_nt  <- sqrt(V["z_Touch", "z_Touch"])
z_nt   <- b_nt / se_nt
p_nt   <- 2 * pnorm(-abs(z_nt))
cat(sprintf("NT Touch slope:   b = %.4f, SE = %.4f, z = %.3f, p = %.4f\n",
            b_nt, se_nt, z_nt, p_nt))

# Sanity-check using emmeans if available
if (requireNamespace("emmeans", quietly = TRUE)) {
  cat("\n--- emtrends sanity check ---\n")
  print(emmeans::emtrends(mB, ~ group, var = "z_Touch", infer = c(TRUE, TRUE)))
}
