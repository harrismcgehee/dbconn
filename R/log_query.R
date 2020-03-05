
# usethis::use_package("DBI")
# usethis::use_package("logger")

#' get query
#'
#' @param conn  connection
#' @param query query
#'
#' @return data.frame
#' @export
#'
log_query <- function(conn, query) {
    logger::log_info("about to run query ",query)
    res <- DBI::dbGetQuery(conn, query)
    logger::log_info("Ran query ", query, " with {nrow(res)} rows returned")

    res
}
