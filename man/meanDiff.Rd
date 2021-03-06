% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meanDiff.R
\name{meanDiff}
\alias{meanDiff}
\title{Function to compute raw mean methylation differences}
\usage{
meanDiff(bs, dmrs, testCovariate)
}
\arguments{
\item{bs}{a \code{BSseq} object}

\item{dmrs}{a data.frame with one row per DMR. This can be in the format
of \code{dmrseq} output, but at least should contain the indexStart and 
indexEnd values of the regions of interest.}

\item{testCovariate}{a character indicating the covariate of interest in
the \code{pData} slot of \code{bs}.}
}
\value{
numeric vector of raw mean methylation differences.
}
\description{
This function calculates raw mean methylation differences for the
covariate of interest over a set of DMRs (or regions of interest), 
assuming a simple two-group comparison.
}
\examples{

data(BS.chr21)
data(dmrs.ex)
rawDiff <- meanDiff(BS.chr21, dmrs=dmrs.ex, testCovariate="CellType")

}
