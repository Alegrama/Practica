#Practica 1
#Realice un ejemplo de las estructuras if y for, utilice la cantidad de 
#datos diferentes de las que se utilizaron en clase.

contador = 25

 if (contador>= 25) {
   print("Cumple condición")
 }else{
   print("No cumple condición")
 }
 
for (i in 5:contador) {
     print(i)
   }
  
#2. Declare un tipo de variable double, integer y carácter
Integer=2L
typeof(integer)

double=2.6
typeof(double)

string="ejemplo caracter"
typeof(string)

#Cree un vector de enteros

c(1:100)
MA=c("enero","febrero","marzo","abril","mayo","junio","julio","agosto","setiembre","octubre","noviebre","diciembre")

#Cree un vector con nombre de personas
nombres=c("Ana, Juana, Monica,Carlos,Hernan,Juan,Alejandro")

NP=c("Shrek","Shrek 2","Shrek Tercero","Shrek Felices para Siempre")

Puntuacion=c(7.9,7.2,6.1,6.3)
AP=c(2001,2004,2007,2010)



mayor2005=c("false","false","true","true")

length(NP)
min(Puntuacion)
max(Puntuacion)

sum(Puntuacion)
mean(Puntuacion)
median(Puntuacion)

sort(Puntuacion)
plot(AP)
unique(AP)
which.max(Puntuacion)
which.min(Puntuacion)
sqrt(Puntuacion)

#valores de 1 al 100

seq(1,100, by=1)
seq(0,100, by=10)


vector_ejemplo=rep(1:100,by=10)
vector_ejemplo