#' Von Bertalanffy Growth Model
#'
#' Fit a von Bertalanffy growth model to otoliths and/or tags, using the
#' Schnute-Fournier parametrization.
#'
#' @param par a parameter list.
#' @param data a data list.
#' @param t age (vector).
#' @param L1 predicted length at age \code{t1}.
#' @param L2 predicted length at age \code{t2}.
#' @param k growth coefficient.
#' @param t1 age where predicted length is \code{L1}.
#' @param t2 age where predicted length is \code{L2}.
#' @param silent passed to \code{\link[RTMB]{MakeADFun}}.
#' @param \dots passed to \code{\link[RTMB]{MakeADFun}}.
#'
#' @useDynLib vonbert
#'
#' @importFrom TMB MakeADFun
#'
#' @export

vonbert <- function(data, par, silent=TRUE, ...)
{
  MakeADFun(data, par, DLL="vonbert", silent=silent)
}
