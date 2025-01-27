## code to prepare `export_opr` dataset goes here
export_chd_sex <- data.table::fread("inst/extdata/export_chd_sex.txt", encoding = "UTF-8")
export_chd_sex <- export_chd_sex[year != 2024]
usethis::use_data(export_chd_sex, overwrite = TRUE)
