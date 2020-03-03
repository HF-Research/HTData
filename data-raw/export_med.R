## code to prepare `export_med` dataset goes here
export_med <- data.table::fread("inst/extdata/export_med.txt", encoding = "UTF-8")
usethis::use_data(export_med)
