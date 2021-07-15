Notas=c(80,90,95,80,86,88,90,92,99,78)
names(Notas)=c("Alex","Carlos","Rob","Ana","Rachel","cat","Heidi","Pri","Vale","Sirley")
plot(Notas)

#Ejercicio 2
financial=data.frame(financial)
class(financial)
names(financial)
View(financial)
install.packages("deplyr")

#A) y b)
Precio_IVA=(select(financial,Price)*1.13)
View(Precio_IVA)
PorcentajedeGanancias=(select(financial,"Price.Earnings"))
View(PorcentajedeGanancias)
View(PorcentajedeGanancias^2)

#Ejercicio Filter

financial_temp = select(financial,Name,Sector,Price.Earnings)
View(financial_temp)
  filter1=filter(financial_temp, `Sector`=="Financials" )
View(filter1)

# Group by
Agrupamiento=financial%>%group_by(Sector)%>%
  summarise(Cantidad=n())
View(Agrupamiento)

# Arrange
arrange1=arrange(financial_temp,desc(Price.Earnings))
View(arrange1)

#Mutate
PorcentajeGanaciasPrecio= mutate ( financial , PorcentajeGanaciasPrecio = ( Price.Earnings/Price * 100 ))
View(PorcentajeGanaciasPrecio)

#Select

SelectContain=select(financial,Name,contains("inc"))
View(SelectContain)

#Ejercicio 3

salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)
Nombres1=c("Argentina","Bolivia","Brasil","Chile","Colombia","Ecuador","Paraguay","Peru","Uruguay","Venezuela")

SalariosMinimos=data.frame(salarios,Nombres1)
View(SalariosMinimos)

SalarioPromedio=mean(salarios)
sd(salarios)
min(salarios)
max(salarios)

# Ejercicio 4

Agrupamiento2=financial%>%group_by(Name,Symbol)%>%
  summarise(Cantidad=n())
View(Agrupamiento2)

#Ejercicio 5

IngresoSacoa=c(7, 6, 5, 8, 7, 7, 7, 5, 6, 8)
sd(IngresoSacoa)

# Ejercicio 6
quantile(IngresoSacoa,c(.25,.50,.75,1))

#Ejercicio 7 
#stringr está construido sobre stringi , que usa la biblioteca ICU C para proporcionar 
#implementaciones rápidas y correctas de manipulaciones comunes de cadenas. stringr se centra 
#en las funciones de manipulación de cadenas más importantes y de uso común, mientras 
#que stringi proporciona un conjunto completo que cubre casi cualquier cosa que pueda 
#imaginar. Si encuentra que a stringr le falta una función que necesita, intente buscar 
#en stringi. Ambos paquetes comparten convenciones similares, por lo que una vez que haya
# dominado stringr, debería encontrar stringi igualmente fácil de usar.








install.packages("tyverse")
library("dplyr")
update.packages("deplyr")
names(financial)
head(financial)