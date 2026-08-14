## Revision re-compute script — manuscript Autistic-Child-Robot-Word-Learning
## Recomputes exact statistics for the analysis sample (PID with >=4 valid word-learning trials)
suppressMessages({
  library(dplyr); library(tidyr); library(readr)
})

d  <- read.csv("Clean_MainAnalysis_Data.csv", check.names = FALSE,
               fileEncoding = "UTF-8-BOM")
tt <- read.csv("test_trials_long.csv")

# Analysis sample: PIDs with >= 4 valid (non-NA) word-learning trials
trials_per <- tt %>% group_by(pid) %>%
  summarise(n_valid = sum(!is.na(correct)), .groups = "drop")
keep_pids <- trials_per$pid[trials_per$n_valid >= 4]

samp <- d %>%
  filter(PID %in% keep_pids) %>%
  mutate(group = ifelse(Condition == 0, "Autistic", "Non-autistic"),
         Gender_lab = ifelse(Gender == 1, "Male", "Female"))

cat("=== ANALYSIS SAMPLE (>=4 valid trials) ===\n")
print(table(samp$group))

# -------------------------------------------------------------
# TASK 1 — Age comparison: t-test + Cohen's d
# -------------------------------------------------------------
cat("\n=== TASK 1: AGE COMPARISON ===\n")
age_a <- samp$Age[samp$group == "Autistic"]
age_n <- samp$Age[samp$group == "Non-autistic"]
age_a <- age_a[!is.na(age_a)]
age_n <- age_n[!is.na(age_n)]
cat(sprintf("n Autistic = %d,  M = %.2f, SD = %.2f\n",
            length(age_a), mean(age_a), sd(age_a)))
cat(sprintf("n Non-aut. = %d,  M = %.2f, SD = %.2f\n",
            length(age_n), mean(age_n), sd(age_n)))

t_welch   <- t.test(age_a, age_n, var.equal = FALSE)
t_student <- t.test(age_a, age_n, var.equal = TRUE)
cat("Welch t-test:  ");  print(t_welch)
cat("Student t-test:"); print(t_student)

# Cohen's d, pooled SD (Student-matched)
n1 <- length(age_a); n2 <- length(age_n)
s_p <- sqrt(((n1 - 1) * var(age_a) + (n2 - 1) * var(age_n)) / (n1 + n2 - 2))
d_pooled <- (mean(age_a) - mean(age_n)) / s_p
# Cohen's d, average SD (Welch-matched)
d_avgSD  <- (mean(age_a) - mean(age_n)) /
            sqrt((var(age_a) + var(age_n)) / 2)
cat(sprintf("Cohen's d (pooled SD, Student-matched): %.4f\n", d_pooled))
cat(sprintf("Cohen's d (average SD, Welch-matched):  %.4f\n", d_avgSD))
# Hedges g correction factor for small n
J <- 1 - 3 / (4 * (n1 + n2) - 9)
cat(sprintf("Hedges g (pooled, small-sample corr.):  %.4f\n", d_pooled * J))

# Also compute on FULL Clean_MainAnalysis_Data sample (to check the t(92)=1.51 value)
cat("\n--- AGE COMPARISON on FULL Clean_MainAnalysis_Data (n=97) ---\n")
fa <- d$Age[d$Condition == 0]; fa <- fa[!is.na(fa)]
fn <- d$Age[d$Condition == 1]; fn <- fn[!is.na(fn)]
cat(sprintf("ASD n=%d M=%.2f SD=%.2f ; NT n=%d M=%.2f SD=%.2f\n",
            length(fa), mean(fa), sd(fa), length(fn), mean(fn), sd(fn)))
print(t.test(fa, fn, var.equal = FALSE))
print(t.test(fa, fn, var.equal = TRUE))
nn1 <- length(fa); nn2 <- length(fn)
sp_full <- sqrt(((nn1-1)*var(fa) + (nn2-1)*var(fn)) / (nn1+nn2-2))
cat(sprintf("Cohen's d (pooled, FULL):  %.4f\n", (mean(fa)-mean(fn))/sp_full))
cat(sprintf("Cohen's d (avgSD, FULL):   %.4f\n",
            (mean(fa)-mean(fn))/sqrt((var(fa)+var(fn))/2)))

# -------------------------------------------------------------
# TASK 2 — Gender 2x2 chi-square + Fisher
# -------------------------------------------------------------
cat("\n=== TASK 2: GENDER COMPARISON ===\n")
tab <- table(samp$group, samp$Gender_lab)
cat("Crosstab (rows = group, cols = gender):\n"); print(tab)
cat("Row percentages (% within group):\n")
print(round(prop.table(tab, 1) * 100, 1))
exp <- chisq.test(tab, correct = FALSE)$expected
cat("Expected cell counts:\n"); print(round(exp, 2))
cat("Any expected < 5? ", any(exp < 5), "\n")
cat("Chi-square (uncorrected):\n"); print(chisq.test(tab, correct = FALSE))
cat("Chi-square (Yates):\n");        print(chisq.test(tab, correct = TRUE))
cat("Fisher's exact:\n");             print(fisher.test(tab))

# -------------------------------------------------------------
# TASK 3 — Table 1 cells (analysis sample)
# -------------------------------------------------------------
cat("\n=== TASK 3: TABLE 1 VERIFICATION ===\n")
summ <- function(x) sprintf("%.1f (%.1f)  [n=%d, miss=%d, range %g-%g]",
                            mean(x, na.rm = TRUE), sd(x, na.rm = TRUE),
                            sum(!is.na(x)), sum(is.na(x)),
                            suppressWarnings(min(x, na.rm = TRUE)),
                            suppressWarnings(max(x, na.rm = TRUE)))

for (g in c("Autistic", "Non-autistic")) {
  sub <- samp %>% filter(group == g)
  cat("--- ", g, " (n =", nrow(sub), ") ---\n", sep = "")
  cat("Age months           : ", summ(sub$Age), "\n")
  cat("Gender male n / %    : ", sum(sub$Gender_lab == "Male"), "/",
      nrow(sub), " = ",
      sprintf("%.1f%%", mean(sub$Gender_lab == "Male") * 100), "\n", sep = "")
  cat("ADOS-2 comp score    : ", summ(sub$ADOS_comparison_score), "\n")
  cat("MSEL Verbal DQ       : ", summ(sub$DQ_Verbal), "\n")
  cat("MSEL Non-verbal DQ   : ", summ(sub$DQ_NonVerbal), "\n")
  cat("Vineland ABC         : ", summ(sub$Vine_ABC), "\n\n")
}
