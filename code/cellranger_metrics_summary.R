library(tidyverse)
metrics_summary_SRR13811017 <- read_csv("/data/PRJNA705596/cellranger/SRR13811017/outs/metrics_summary.csv") %>% mutate(Run = "SRR13811017")
metrics_summary_SRR13811018 <- read_csv("/data/PRJNA705596/cellranger/SRR13811018/outs/metrics_summary.csv") %>% mutate(Run = "SRR13811018")
metrics_summary_SRR13811019 <- read_csv("/data/PRJNA705596/cellranger/SRR13811019/outs/metrics_summary.csv") %>% mutate(Run = "SRR13811019")
metrics_summary_SRR13811020 <- read_csv("/data/PRJNA705596/cellranger/SRR13811020/outs/metrics_summary.csv") %>% mutate(Run = "SRR13811020")
metrics_summary_SRR13811021 <- read_csv("/data/PRJNA705596/cellranger/SRR13811021/outs/metrics_summary.csv") %>% mutate(Run = "SRR13811021")
metrics_summary <-
  bind_rows(
    metrics_summary_SRR13811017,
    metrics_summary_SRR13811018,
    metrics_summary_SRR13811019,
    metrics_summary_SRR13811020,
    metrics_summary_SRR13811021)

metrics_summary |>
  select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, "/data/PRJNA705596/metrics_summary.tsv")

