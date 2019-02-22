install.packages("readxl")
install.packages("knitr")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("ggthemes")

library(readxl) # Useful for importing excel sheets 
library(knitr) #Useful for creating nice tables 
library(ggplot2) # Usefule for Data Visualisation 
library(RColorBrewer) 
library(ggthemes) 

install.packages("foreign")
library(foreign)
## http://calcnet.mth.cmich.edu/org/spss/Prj_New_DrugData.htm  (OPEN DATA SOURCE)

setwd("C:\\Users\\Shrey Sharma\\Downloads") 
Drug_Trail <- read.spss("NewDrug.sav")

