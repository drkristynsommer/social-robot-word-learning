## simr_power_robot_fixed.R
## Simplified sensitivity analysis for RQ2:
## fixed-effects-only logistic model (per-child accuracy)

library(tidyverse)
library(simr)

set.seed(2024)

# 1. Load data and build per-child accuracy dataset ----------------------

main <- read_csv("Clean_MainAnalysis_Data.csv", show_col_types = FALSE)

# group definition
if ("group" %in% names(main)) {
  main <- main %>%
    mutate(group = factor(group, levels = c("Autistic", "Non-autistic")))
} else if ("Condition" %in% names(main)) {
  main <- main %>%
    mutate(
      group = ifelse(Condition == 0, "Autistic", "Non-autistic"),
      group = factor(group, levels = c("Autistic", "Non-autistic"))
    )
} else {
  stop("Neither 'group' nor 'Condition' found in Clean_MainAnalysis_Data.csv")
}

trials <- read_csv("test_trials_long.csv", show_col_types = FALSE)

# Per-child: number correct and number of trials
acc_child <- trials %>%
  group_by(pid) %>%
  summarise(
    correct_n = sum(correct, na.rm = TRUE),
    trials_n  = sum(!is.na(correct)),
    .groups = "drop"
  ) %>%
  left_join(main %>% select(PID, group),
            by = join_by(pid == PID)) %>%
  drop_na(group)

table(acc_child$group, useNA = "ifany")

# 2. Fit fixed-effects logistic model (binomial) ------------------------

m_fix <- glm(
  cbind(correct_n, trials_n - correct_n) ~ group,
  family = binomial,
  data   = acc_child
)

summary(m_fix)

# Convert to simr-compatible object
m_sim_base <- makeGlmer(m_fix, fixed = TRUE)

# 3. Define effect sizes (ORs) and run sims ------------------------------

OR_grid <- c(1.10, 1.25, 1.50, 2.00, 2.50, 3.00)
log_OR  <- log(OR_grid)

sens_list <- vector("list", length(OR_grid))

for (i in seq_along(OR_grid)) {
  
  target_OR  <- OR_grid[i]
  target_log <- log_OR[i]
  
  m_tmp <- m_sim_base
  lfe   <- fixef(m_tmp)
  lfe["groupNon-autistic"] <- target_log
  fixef(m_tmp) <- lfe
  
  pow <- powerSim(
    m_tmp,
    test = fixed("groupNon-autistic"),
    nsim = 200
  )
  
  sens_list[[i]] <- data.frame(
    OR     = target_OR,
    log_OR = target_log,
    power  = pow$power,
    lower  = pow$lower,
    upper  = pow$upper
  )
  
  print(pow)
}

sensitivity_fixed <- bind_rows(sens_list)
print(sensitivity_fixed)

simr_res_robot_fixed <- list(
  model       = m_fix,
  sensitivity = sensitivity_fixed
)

saveRDS(simr_res_robot_fixed, file = "simr_power_robot_fixed.rds")