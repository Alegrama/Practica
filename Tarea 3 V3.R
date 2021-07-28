attach(hitters)
library(dplyr)
library(ggplot2)
install.packages("gganimate")
library(gganimate)
install.packages("gifski")
library(gifski)
install.packages("gapminder")
library(gapminder)
library(plotly)
install.packages("plotly")

#Analisis exploratorio  
head(hitters)
View(hitters)

# Extracci?n de informaci?n  a ser analizada
SeleccionColumnas=select(hitters,CAtBat,CHits,CHmRun,CRuns,CRBI,CWalks,Salary)

#Limpieza de filas con campos NA
View(Hitters1 <- na.omit(hitters))

#Calcular el promedi0 de average de los bateadores en la temporada y en la carrera

AvgeTemporada=mutate(Hitters1,Average=Hitters1$Hits/Hitters1$AtBat,AvgeCarrera=Hitters1$CHits/Hitters1$CAtBat)
View(AvgeTemporada)
hist(AvgeTemporada$Average, 
     main='Distribucion del promedio de Bateo de la Temporada',
     col='red',
     xlab = 'Promedio de Bateo',
     ylab = 'Frecuencia')

# De lo anterior se desprende que en la temporada el desempeno de bateo se concentra 
# en el rango de .250 a .300

#Distribucion de bateadores por liga
AgrupamientoLiga=Hitters1%>%group_by(League)%>%
  summarise( Cantidad =n())

plot(x=as.factor(AgrupamientoLiga$League),y=AgrupamientoLiga$Cantidad)


barplot(table(AgrupamientoLiga$League),
        col='blue',
        border='red',
        main='Distribucion de Bateadores por Liga',
        xlab='Liga'    )



#ggplot Distribucion de salarios
library(ggplot2)
Grafico=ggplot(data = Hitters1, aes(x = Hitters1$Salary,fill=AvgeTemporada)) +
  geom_histogram(color = "white", fill = "purple") +
  labs(title = "Distribucion Salario") +
  theme(plot.title = element_text(hjust = 0.5))

#Interactivo  
ggplotly(Grafico)



#Analisis de correlacion
Muestra=select(AvgeTemporada,CAtBat,CHits,CHmRun,CRuns,CRBI,CWalks,Salary,AvgeCarrera)
Muestra2=select(AvgeTemporada,AtBat,Hits,HmRun,Runs,RBI,Walks,Salary,Average)
pairs(Muestra)
pairs(Muestra2)
cor(Muestra)
cor(Muestra2)
plot(x=Muestra$CAtBat,y=Muestra$CRuns,
     main="Correlacion entre Turnos al Bate y Carreras",
     xlab = "Turnos al Bate",
     ylab = "Carreras",
     col= 'violet',
     pch=10,
     panel.first = grid())


plot_ly(data=Muestra,x=~CAtBat,y=~CRuns, color=~'red',symbol = ~'Species')     


#Entrenamiento del modelo
ModeloTR = lm(CRuns ~ CAtBat,Muestra)
summary(ModeloTR)
abline(ModeloTR,col="red")

Test = data.frame(CAtBat=seq(300,500,50))

data=predict(ModeloTR,Test)
plot(data)

#La prediccion realizada nos indica que para los vectores (Turnos al Bate) consigue carreras
#  300    25.63
#  350    32.75
#  400    39.86
#  450    46.98
#  500    54.10   



#CORRELACION

corplot=ggcor(select(hitters,-c("League","Division","NewLeague")),size=2)+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
corplot

#Como era de esperar, existe una fuerte correlación entre las estadísticas y métricas del béisbol 
#en relación con el salario de los jugadores. ¡Cuanto mejor sea el rendimiento, mayor será el salario
#Además, hay mucha multicolinealidad entre los predictores. es decir, el número de veces al bate tiene 
#una fuerte correlación con el número de veces que eres capaz de hacer un hit, un jonrón o incluso una carrera.

#VISUALIZACION DE DATOS

Regresion2=lm(Runs~Hits,SeleccionColumnas)
summary(Regresion2)
abline(Regresion2,col="red")

hitters$Salary <- log(hitters$Salary)

ggplot(data = hitters, aes(x = Salary)) +
  geom_histogram(color = "white", fill = "black") +
  labs(title = "Distribución log(Salary)") +
  theme(plot.title = element_text(hjust = 0.5))

install.packages("caret")
install.packages("lattice")
install.packages("caret")
library(caret)
install.packages("glmnet")
library(glmnet)

histogram(hitters$Salary, xlab = "Salary, $1000s", 
          main = "Baseball Salaries, 1986 - 1987")

#Distribución variable respuesta
ggplot(data = OJ, aes(x = Purchase, y = ..count.., fill = Purchase)) +
  geom_bar() + labs(title = "Distribución Purchase") + scale_fill_manual(values = c("darkgreen", "orangered2"), 
                                                                         labels = c("Citrus Hill", "Orange Juice")) + theme_bw() + theme(plot.title = element_text(hjust = 0.5))

#PREDICCIONES

AtBat=ggplot(hitters,aes(AtBat,Salary))+
  geom_point()+
  geom_smooth()
View=AtBat

Hits=ggplot(hitters,aes(CHits,Salary))+
  geom_point()+
  geom_smooth()
View=Hits

HmRun=ggplot(hitters,aes(CHmRun,Salary))+
  geom_point()+
  geom_smooth()
View=HmRun

ggplot(AtBat,Hits,HmRun,ncol=1,nrow=3)


