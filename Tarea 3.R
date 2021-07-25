

x <- 1: 4 
y <- 2
reultado=x+y

A<-c(1,2,3,4,5) 
mean(A^2)
library
Dventas=c("lunes","martes","miercoles","jueves","viernes","sabado","domingo")
Qventas=c(25000,50000,75000,100000,125000,150000,175000)
VentasSemanales=data.frame(Dventas,Qventas)

NombreEstudiante= c("Juan", "Margarita", "Ruben", "Daniel") 
NOtaPrimerTrim=c(85,95,100,85)
NotaSegundoTrim=c(88,90,75,98)
NotaTercerTrim=c(90,85,99,78)
PromedioNotaAnual=data.frame(NombreEstudiante,NOtaPrimerTrim,NotaSegundoTrim,NotaTercerTrim)
AnnualAvge=mutate(PromedioNotaAnual,"Promedio Nota Anual"
          =(NOtaPrimerTrim+NotaSegundoTrim+NotaTercerTrim)/3)

m=(10*3)+(5^3)/15*15*100