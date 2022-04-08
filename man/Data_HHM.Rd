\name{Data_HHM}
\alias{Data_HHM}
\docType{data}
\title{
data set generated using the same parameters as in Rackham et al 2015
}
\description{
This data set is simulated using a flexible stochastic simulation tool that generates single-base resolution DNA methylation data genome-wide
}
\usage{data("Data_HHM")}
\format{
  A data frame with 1000 observations which contains 4 columns:
  \describe{
    \item{\code{position}}{The location of the site i on a chromosome;}
    \item{\code{CT}}{The observed count of C reads and T reads for each site i;}
    \item{\code{origin}}{The statue of the ith CpG site with 0 designates the site is unmethylated, 1 designates the site is methylated;}
    \item{\code{Ccount}}{The observed count of C reads at the ith CpG site.}
  }
}

\source{
http://www.wgbssuite.org.uk/
}
\references{
Rackham OJ, Dellaportas P, Petretto E1, Bottolo L: WGBSSuite: simulating whole-genome bisulphite sequencing data and benchmarking differential DNA methylation analysis tools. 10.1093/bioinformatics/btv114. Epub Mar 15
}
\examples{
data(Data_HHM)
}

