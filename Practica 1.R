#Practica 1
#Realice un ejemplo de las estructuras if y for, utilice la cantidad de 
#datos diferentes de las que se utilizaron en clase.

edad = 25

 if (edad>= 25) {
   print("Cumple condición")
 }else{
   print("No cumple condición")
 }
 
for (i in 5:contador) {
     print(i)
   }
  
#2. Declare un tipo de variable double, integer y carácter
Integer=2L
typeof(Integer)

double=2.6
typeof(double)

string="ejemplo caracter"
typeof(string)

#Cree un vector de enteros

vector_entero=c(1:100)
vector_entero

MA=c("enero","febrero","marzo","abril","mayo","junio","julio","agosto","setiembre","octubre","noviebre","diciembre")
MA
#Cree un vector con nombre de personas
nombres=c("Ana, Juana, Monica,Carlos,Hernan,Juan,Alejandro")

#Crree un vect: Nombre de la película 
NP=c("Shrek","Shrek 2","Shrek Tercero","Shrek Felices para Siempre")

#	Vector 2: Puntuación 
Puntuacion=c(7.9,7.2,6.1,6.3)

AP=c(2001,2004,2007,2010)


#antes del 2005 (TRUE/FALSE) 

menor2005=c(TRUE,TRUE,FALSE,FALSE)

#7.	
length(NP)
length(Puntuacion)

min(Puntuacion)
max(Puntuacion)

sum(Puntuacion)
mean(Puntuacion)
median(Puntuacion)

sort(Puntuacion)
plot(AP)
plot(Puntuacion)
unique(Puntuacion)
unique(AP)
which.max(Puntuacion)
which.min(Puntuacion)
sqrt(Puntuacion)

#valores de 1 al 100

VECTORseq=seq(1,100, by=1)
VECTOR2seq=seq(0,100, by=10)


vector_ejemplo=rep(1:100,by=10)
vector_ejemplo

vectorprueba=c(1,2,3)
vectorprueba



#dataframe(Tema Nuevo)
#Vector es unidemensional
names(NP)=c("peli1","peli2","peli3","peli4")

iris
trees
warpbreaks



#Creacion de dataframes
vectroSeqBy  = seq (   0 , 100 , 10 )
# seq (de, hasta, por)
imprimir ( vectroSeqBy )
vectroSeqBy






# DATAFRAMES (TEMA NUEVO)

vectorPelicula

nombres ( vectorPelicula ) = c ( " Peli1 " , " Peli2 " , " Peli3 " , " Peli4 " )

vectorPelicula

iris
árboles
warpbreaks


# Convertir un marco de datos
is.data.frame ( iris )
iris  =  data.frame ( iris )
clase ( iris )

iris
Ver ( iris )


# Creamos vectores con los valores

nombre  = c ( " Juan " , " Margarita " , " Ruben " , " Daniel " )

apellido  = c ( " Sánchez " , " García " , " Sancho " , " Alfara " )

fecha_nacimiento  = as.Date (c ( " 1976-06-14 " , " 1974-05-07 " , " 1958-12-25 " , " 1983-09-19 " ))

sexo  = c ( " HOMBRE " , " MUJER " , " HOMBRE " , " HOMBRE " )

nro_hijos  = c ( 1 , 2 , 3 , 4 )

# Creación con la función data.frame

censo  =  data.frame ( nombre , apellido , fecha_nacimiento , sexo , nro_hijos )
clase ( censo )
Ver ( censo )

# cabeza ()
cabeza ( censo )
# cola
cola ( censo )
# str
str ( censo )

# acceso a variables
Ver ( data.frame ( censo $ sexo ))
censo $ sexo = as.factor ( censo $ sexo )

cuantil ( iris $ Sepal.Longitud )

ncol ( censo )
nombres ( censo )
Ver ( censura [ 2 : 4 ])

# Ejemplo 1

# a

resultados = c ( " A " , " A " , " B " , " B " , " B " , " B " , " B " , " I " , " I " , " I " , " R " , " I " , " Yo " ," Yo " , "R " , " R " ,
                 " R " , " R " , " R " , " R " , " R " , " R " , " R " , " R " , " R " , " M " , " M " , " M " , " M " , " M " ," M " ,
                 " M " , " M " , " M " , " M " , " M " , " M " , " M " , " A " , " A " )



# frecuencia absoluta

FrecuenciaAbsoluta  = tabla ( resultados )
Frecuencia Absoluta

# frecuencia relativa

FrecuenciaRelativa  =  FrecuenciaAbsoluta / longitud ( resultados )
FrecuenciaRelativa

#Practica 2
#Crear un data.frame()
vector

NP=c("Shrek","Shrek 2","Shrek Tercero","Shrek Felices para Siempre")
Puntuacion=c(7.9,7.2,6.1,6.3)
AP=c(2001,2004,2007,2010)

DFPelis=data.frame(NP,Puntuacion,AP)

#Ejercicio 3
nombres=c("hugo","paco","luis","paty","maria","ruben","gaby")
edades=c(28L,26L,32L,24L,33L,23L,43L)
sueldos=c(12.5,13.5,14.8,7.1,57.7,45.3,34.2)
genero=c("m","m","m","f","f","m","m")
pasatiempos=c("musica","musica","estudio","videojuegos","musica","musica","videojuegos")

dfejercicio3=data.frame(nombres,edades,sueldos,genero,pasatiempos)

View(dfejercicio3)

#Ejercicio 4 

#Author DataFlair

int_vec <- c(1,2,3)

char_vec <- c("a", "b", "c")

bool_vec <- c(TRUE, TRUE, FALSE)

Salario <- c(5000,56700,6000)

dfejercicio4=data.frame(int_vec,char_vec,bool_vec,Salario)
View(dfejercicio4)
