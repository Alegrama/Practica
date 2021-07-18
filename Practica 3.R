#Practica #3

# Grafico de barras

names(hitters)
call(hitters)
head(hitters)
plot(x=as.factor,hitters$League)
hist(x=hitters$HmRun)

#Grafico de Barras
ggplot(hitters,aes(x=League))+geom_bar(fill="red")+theme_classic()

#Explicacion. En el grafico se puede observa la distribucion de bateadores por liga.

#Grafico time based

fechas_precio=seq(as.Date("1985/01/01"),by= 'year', length= 32)
Electric_Production
plot(fechas_precio,rnorm(32),type="l",main = "Valor de la Electricidad")
     
     #Se observa el comportamiento del precio de la electricidad  traves de los anos
     
     
     # Grafico de Correlacion
     plot(hitters$AtBat,hitters$Hits,main = "Relacion veces al bateo vs Hits")
     
     #En este grafico se observa una estrecha relacion entre las 
     #variables de veces al bateo(atbat y los hits logrados, lo cual indica que entre mas
     #veces al bat mas hits lograran los bateadores)
     
     
     
     