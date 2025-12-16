## code to prepare `export_opr` dataset goes here
export_opr <- data.table::fread("inst/extdata/export_opr_2024.txt", encoding = "UTF-8")
usethis::use_data(export_opr, overwrite = TRUE)
#
# y <- data.table::fread("inst/extdata/export_opr_2023.txt", encoding = "UTF-8")
# y=y[year %in% c('2019', '2020','2021', '2022', '2023')]
# # usethis::use_data(export_opr, overwrite = TRUE)
#
# export_opr <- rbind(x,y)
# usethis::use_data(export_opr, overwrite = TRUE)
