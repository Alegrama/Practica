attach(hitters)
library(dplyr)
heads(hitters)
SeleccionColumnas=select(hitters,AtBat,Hits,HmRun,Runs)
pairs(SeleccionColumnas)
cor(SeleccionColumnas)
plot(SeleccionColumnas$Hits,SeleccionColumnas$Runs)


Regresion2=lm(Runs~Hits,SeleccionColumnas)
summary(Regresion2)
abline(Regresion2,col="red")

