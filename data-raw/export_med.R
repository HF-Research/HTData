## code to prepare `export_med` dataset goes here
export_med <- data.table::fread("inst/extdata/export_med_2024.txt", encoding = "UTF-8")
usethis::use_data(export_med, overwrite = TRUE)

# y <- data.table::fread("inst/extdata/export_med_2023.txt", encoding = "UTF-8")
# y=y[year %in% c('2019', '2020','2021', '2022', '2023')]
# # usethis::use_data(y, overwrite = TRUE)
#
# # export_med <- rbind(x, y)
# usethis::use_data(export_med, overwrite = TRUE)
