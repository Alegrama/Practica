#PRACTICA 5

hitters
Muestra=select(hitters,AtBat,Hits,HmRun,Runs,RBI)
pairs(Muestra)

cor(Muestra)
plot(x=Muestra$AtBat,y=Muestra$Hits,
main = "Relación entre veces al bateo y Hits conseguidas",
xlab = "Q Turnos al bate",
ylab= "Q de Hits")


regresion=lm(Hits~AtBat,Muestra)
abline(regresion, col="red")
summary(regresion)

HitsEsperados=data.frame(AtBat=seq(50,450,by = 50,Hits))
View(HitsEsperados)

Prediccion=predict(Regresion, HitsEsperados)
View(Prediccion)




class(var)