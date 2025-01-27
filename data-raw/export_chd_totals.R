## code to prepare `export_opr` dataset goes here
export_chd_totals <- data.table::fread("inst/extdata/export_chd_totals.txt", encoding = "UTF-8")
export_chd_totals <- export_chd_totals[year != 2024]
usethis::use_data(export_chd_totals, overwrite = TRUE)
