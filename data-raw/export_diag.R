## code to prepare `export_diag` dataset goes here
data_files <-
  list.files(path = "inst/extdata/",
             pattern = "export_diag_new",
             full.names = TRUE)
export_diag <-
  lapply(data_files, data.table::fread, encoding = "UTF-8")
export_diag <- data.table::rbindlist(export_diag)

usethis::use_data(export_diag, overwrite = TRUE)
