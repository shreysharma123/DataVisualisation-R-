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

Drug_Trail <- as.data.frame(Drug_Trail) 
head(Drug_Trail)

##code and visualisation

ggplot(Drug_Trail,mapping= aes(x = reorder(Subject,Treatment))) +   
geom_line(aes(y = Before_exp_BP, group = Treatment), colour="blue") +    
geom_point(size=0.9 ,aes(y=Before_exp_BP),colour="blue") +   
geom_line(aes(y = After_exp_BP,group = Treatment), colour = "red") +    
geom_point(size=0.9 , aes(y=After_exp_BP),colour="red") +   
labs(title="Blood Pressure Level Variation for Treatment and Control Group",caption="Source:calcnet.mth.cmich.edu",x="Subjects",y="Blood Pressure(mm Hg)") +theme_stata() +theme(axis.text.x = element_text(angle = 90, vjust=0.5, size = 7),panel.grid.minor = element_blank()) +   
geom_vline(aes(xintercept=22.5),colour="dark green",linetype="dashed",size=1.0) + 
annotate (colour="brown",size=3.5,"text", x = 10, y = 115, label = "<----------Control Group--------->") + 
annotate(colour="brown",size=3.5,"text", x = 40, y = 115, label = "<---------------Trea tment Group-------------->")+annotate("text",x=9,y=106,label="Before Experiment",size=2.75,col="Blue") + 
annotate("text",x=9,y=86,label="After Experiment",size=2.75,col="Red")