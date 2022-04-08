\name{Data_MSC}
\alias{Data_MSC}
\docType{data}
\title{
  data set generated using the same parameters as in Cheng et al. 2014
}

\description{
This data set is simulated using binomial mixture models, We use the same parameters as in Cheng et al. 2014
}

\usage{data("Data_MSC")}
\format{
  A data frame with 1000 observations which contains 4 columns:
  \describe{
    \item{\code{position}}{The location of the site i on a chromosome;}
    \item{\code{CT}}{The observed count of C reads and T reads for each site i;}
    \item{\code{origin}}{The statue of the ith CpG site with 0 designates the site is unmethylated, 1 designates the site is methylated;}
    \item{\code{Ccount}}{The observed count of C reads at the ith CpG site.}
  }
}

\references{
Cheng L, Zhu Y. A classification approach for DNA methylation profiling with bisulfite next-generation sequencing data. Bioinformatics. 2014; 30(2):172-9. 
}
\examples{
data(Data_MSC)
}

