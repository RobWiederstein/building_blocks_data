#import file
file <- "./provider_profiles/2022-03-30_provider_profiles.csv"
df <- readr::read_csv(
    file,
    name_repair = ~ janitor::clean(.x)
)
write.csv(df, file = file, row.names = F)
# code_book
code_book <-
    tibble::tibble(
        Variable = colnames(df),
        Description = sample(letters, 45, replace = T)
    )
# xtable::xtable(code_book, thpe = "html") |> print(type = "html")
