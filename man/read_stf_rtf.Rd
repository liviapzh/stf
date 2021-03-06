% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_stf_rtf.R
\name{read_stf_rtf}
\alias{read_stf_rtf}
\title{Reads rtf files}
\usage{
read_stf_rtf(file = NULL, plan = "sequential")
}
\arguments{
\item{file}{of paths to the rtf files to be read.}

\item{plan}{Defaults to "sequential". Check \code{future::plan}
for datails.}
}
\value{
a tibble with tree columns: incidente, texto, and doc_id.
}
\description{
Reads rtf files
}
\examples{
\dontrun{
read_stf_rtf(file = "")
}
}
