
# usethis::use_package("DBI")
# usethis::use_package("logger")

#' get query
#'
#' @param conn  connection
#' @param query query
#' @param namespace logger namespace to use
#'
#' @return data.frame
#' @export
#'
log_query <- function(conn, query, namespace = "global") {
    logger::log_info("about to run query ",query, namespace = namespace)
    res <- DBI::dbGetQuery(conn, query)
    logger::log_info("Ran query ", query, " with {nrow(res)} rows returned", namespace = namespace)

    res
}
