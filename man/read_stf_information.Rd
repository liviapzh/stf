% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_stf_information.R
\name{read_stf_information}
\alias{read_stf_information}
\title{Reads data from information tab.}
\usage{
read_stf_information(path = ".", plan = "sequential")
}
\arguments{
\item{path}{where the htmls are.}

\item{plan}{default to "sequential". See \code{future::plan} for
more options.}
}
\value{
a tibble with data from the information tab.
}
\description{
Reads data from information tab.
}
\examples{
\dontrun{
informacao <- read_stf_information("html", plan = "multiprocess")
}
}
