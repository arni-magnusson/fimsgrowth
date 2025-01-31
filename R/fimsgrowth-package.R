#' @name fimsgrowth-package
#'
#' @aliases fimsgrowth
#'
#' @title Fit Growth Curves to Fish Data
#'
#' @description
#' Fit growth models to otoliths and/or tagging data, using
#' \code{\link[TMB]{MakeADFun}} and maximum likelihood.
#'
#' The otoliths (or similar measurements of age) provide direct observed
#' coordinates of age and length. The tagging data provide information about the
#' observed length at release and length at recapture at a later time, where the
#' age at release is unknown and estimated as a vector of parameters.
#'
#' The growth models provided by this package can be fitted to otoliths only,
#' tagging data only, or a combination of the two. Growth variability can be
#' modelled as constant or increasing with length.
#'
#' @details
#' \emph{Example data:}
#' \tabular{ll}{
#'   \code{\link{otoliths_had}} \tab otoliths (haddock)\cr
#'   \code{\link{otoliths_skj}} \tab otoliths (skipjack)\cr
#'   \code{\link{tags_skj}}     \tab tags (skipjack)
#' }
#'
#' @author Arni Magnusson and Mark Maunder.

"_PACKAGE"
