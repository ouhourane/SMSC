\name{SMSC}
\alias{SMSC}
\title{
SMSC estimates the parameters of the mixture of binomial using the non parametric approach.
}
\description{
This package implements a smooth methylation status calling (SMSC) procedure for classification the next genaration data. 
}
\usage{
SMSC(C, CT, t, p1 = 0.85, p2 = 0.1, method = c("Locfit", "KNN1", "KNN2", "MSC"), eps = 1e-06, K = 20, h = 500, maxIt = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{C}{
   A vector of observed count of C reads at the CpG sites;
}
  \item{CT}{
  A vector of observed count of C and T reads at the CpG sites;
}
  \item{t}{
A vector of the location at the CpGs sites on a chromosome;
}
  \item{p1}{
  The error rate for obtaining C reads at unmethylated sites. The initial default value is 0.85 (Cheng et al. 2014);
}
  \item{p2}{
 The compelement of p2 (1-p2) denote the error rate for obtaining T reads at methylated sites.  The initial default value is 0.1 (Cheng et al. 2014);
}
  \item{method}{a character string specifying the ckeck the non parametric method to use for smoothing the probability that site i is methylated, valid options are:
		\itemize{
		\item \code{"Locfit"} We estimate the pi in the E-step with a local-likelihood smoother. We choose a genomic window h for each position. The   window is made large enough so that K CpGs are included but at least h wide. In each position, we assume log(f(pi)/(1-f(pi))) is approximated by a
 second degree polynomial. We use locfit for fitting local regression and likelihood models of the probability that the site i to be methylated pi on their location.
                \item \code{"KNN1"}  The methylation status of each CpG site is modelled by the smoothing nonparametric techniques, We use an adaptive bandwidth  
                which depends on location t. This variable bandwich is defined by K-nearest neighbours.
                \item \code{"KNN2"} As in the KNN1 rule unless all K of its nearest neighbors are on the same side (left or right);
		\item \code{"MSC"} For each site, the methylation status of each CpG site is average status of all sites (procedure MSC: Cheng et al 2014);
		} Default is \code{"Locfit"}
}
  \item{eps}{
  The convergence threshold for EM algorithm using smoothing technics, default is 1e-06;
}
  \item{K}{
  The K th nearest neighbor, it is used to get the bandwich hi in the position i for the KNN1 and KNN2 and to get the genomic window in Locfit, default is 20;
}
  \item{h}{
   It is used to get the genomic window in Locfit in the position i, default is 500;
}
  \item{maxIt}{
The maximum number of iterations allowed, default is 100.
}
}

\details{
SMSC is described in detail ....... With the "MSC" option, it computes the parameters of the mixture of binomial. A others options (KNN1, KNN2 and Locfit), we use the kernel smoothed EM-like algorithm to computes the parameters of our model.

}


\value{
An object with S3 class, this object contains many results, their values corresponds to the final convergence results
		\itemize{
                \item \code{"p1"} The last value of the parameter p1;
                \item \code{"p2"} The last value of the parameter p2;
		\item \code{"pi"} The last value of the probability vector of the sites CpGs to be methylated;
                \item \code{"THETAi0"} The last value of the conditional probability vector of the sites CpGs to be methylated given their coverages.
		}

}
\references{
		\itemize{

		\item{ Hansen, K.D., Langmead, B. and Irizarry, R.A. BSmooth: from whole genome bisulfite sequencing reads to differentially methylated regions. Genome Biol. 13, R83 (2012).} 
                \item{ Cheng L, Zhu Y. A classification approach for DNA methylation profiling with bisulfite next-generation sequencing data. Bioinformatics. 2014; 30(2):172-9.}

                \item{ Rackham OJ, Dellaportas P, Petretto E1, Bottolo L: WGBSSuite: simulating whole-genome bisulphite sequencing data and benchmarking differential DNA methylation analysis tools. 10.1093/bioinformatics/btv114. Epub Mar 15.}
		

                 \item{ Parameswaran Ramachandran,and Theodore J Perkins: Adaptive bandwidth kernel density estimation for next-generation sequencing data. BMC Proc. 2013; 7(Suppl 7): S7.}

                 \item{Loader, C. (1999). Local Regression and Likelihood. Springer, New York.}

}
}
\examples{
# MSC scenario
data(Data_MSC)
y <- Data_MSC

# HHM scenario
data(Data_HHM)
y <- Data_HHM

fit0<-SMSC(y$Ccount, y$CT,y$position, method="MSC")

fit1<-SMSC(y$Ccount, y$CT,y$position, method="KNN1")

fit2<-SMSC(y$Ccount, y$CT,y$position, method="KNN2")

fit3<-SMSC(y$Ccount, y$CT,y$position, method="Locfit")

}
\keyword{Genomic}
\keyword{Methylation}
\keyword{Binomial distributions }
\keyword{Mixture}
\keyword{Nonparametric regression}
\keyword{Smoothing techniques}
