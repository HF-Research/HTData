## code to prepare `export_opr` dataset goes here
export_chd_age <- data.table::fread("inst/extdata/export_chd_age.txt", encoding = "UTF-8")
export_chd_age <- export_chd_age[year != 2024]
usethis::use_data(export_chd_age, overwrite = TRUE)
