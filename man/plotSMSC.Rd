\name{plotSMSC}
\alias{plotSMSC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot the "SMSC" object
}
\description{
An Illustrated Plot Summary (see: Our Article:title)
}
\usage{
plotSMSC(ratio, org, t, fit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ratio}{
   The observed count of C reads at the ith CpG site divided by  the observed count of C reads and T reads for each site i;
}
  \item{org}{
     The statue of the ith Cpg site, with 0 designates the site is unmethylated, 1 designates the site is methylated;
}
  \item{t}{
The location of the site i on a chromosome;
}
  \item{fit}{
SMSC object, see SMSC function for more details about this object.
}
}

\examples{
#### MSC scenario
data(Data_MSC)
#### HHM scenario
data(Data_HHM)

y <- Data_MSC #### or y <- Data_HHM

origin = y$origin
ratio=y$Ccount/y$CT
position = y$position

fit0<-SMSC(y$Ccount, y$CT,y$position, method="MSC")
plotSMSC(ratio,origin,position,fit0)

fit1<-SMSC(y$Ccount, y$CT,y$position, method="KNN1")
plotSMSC(ratio,origin,position,fit1)

fit2<-SMSC(y$Ccount, y$CT,y$position, method="KNN2")
plotSMSC(ratio,origin,position,fit2)

fit3<-SMSC(y$Ccount, y$CT,y$position, method="Locfit")
plotSMSC(ratio,origin,position,fit3)
}

