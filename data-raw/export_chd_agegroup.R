## code to prepare `export_age` dataset goes here
export_chd_agegroup <- data.table::fread("inst/extdata/export_chd_agegroup.txt", encoding = "UTF-8")
#export_chd_agegroup <- export_chd_agegroup[year != 2024]
usethis::use_data(export_chd_agegroup, overwrite = TRUE)
