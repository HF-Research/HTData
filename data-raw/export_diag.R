## code to prepare `export_diag` dataset goes here
data_files <-
  list.files(path = "inst/extdata/",
             pattern = "export_diag_2023",
             full.names = TRUE)
export_diag_2023 <-
  lapply(data_files, data.table::fread, encoding = "UTF-8")
export_diag_2023 <- data.table::rbindlist(export_diag_2023)

# usethis::use_data(export_diag_2023, overwrite = TRUE)

## code to prepare `export_diag` dataset goes here
data_files <-
  list.files(path = "inst/extdata/",
             pattern = "export_diag_new",
             full.names = TRUE)
export_diag <-
  lapply(data_files, data.table::fread, encoding = "UTF-8")
export_diag <- data.table::rbindlist(export_diag)

# usethis::use_data(export_diag, overwrite = TRUE)


x=export_diag[!(year %in% c('2022') & event %in% c("n.dead1", "n.dead30", "n.dead5", "n.dead.year"))]
y <- export_diag_2023[year==2022 & event %in% c("n.dead1", "n.dead30", "n.dead5", "n.dead.year")]
z <- rbind(x, y)

y1 <- export_diag_2023[year %in% c('2019', '2020') & event == 'n.dead5']
z1 <- rbind(z, y1)

y2 <- export_diag_2023[year==2023]
z2 <- rbind(z1, y2)
export_diag <- z2[!(year %in% c('2023') & event %in% c("n.dead1", "n.dead30", "n.dead5", "n.dead.year"))]

usethis::use_data(export_diag, overwrite = TRUE)
