## code to prepare `export_opr` dataset goes here
export_opr <- data.table::fread("inst/extdata/export_opr.txt", encoding = "UTF-8")
usethis::use_data(export_opr, overwrite = TRUE)
