#TAREA 2

data <- read_csv("C:/Users/Cristina/Desktop/Analisis de datos/TDNA05/Data Bases/data.csv")
View(data)


Muestra=select(data,price,bedrooms,bathrooms,floors)

Ejercicio B
 plot(Muestra$price,Muestra$bedrooms,main="Precio vs Habitaciones")
#No se muestra una relacion directa entre el precio y el numero de banos
 plot(Muestra$price,Muestra$bathrooms,main="Precio vs Banos")
 #No se muestra una relacion directa entre el precio y el numero de banos
 plot(Muestra$price,Muestra$floors,main="Precio vs Pisos")
 #No se muestra una relacion directa entre el precio y el numero de banos
 plot(data$price,data$qft_lot,main="Precio vs Pisos")
 #No se muestra una relacion directa entre el precio y el numero de banos
 plot(data$bedrooms,data$bathrooms,main="Precio vs Pisos")
 
#En este caso hay una baja relacion positiva entre 
#la cantidad de habitaciones conlos servicios sanitarios
 
 #Busqueda de Correlacion de variables
 pairs(Muestra)
 plot(data$bedrooms,data$bathrooms,main="Habitaciones vs Banos")
 
 #Funciones de dplyr
 Muestra=select(data,price,bedrooms,bathrooms,floors)
 head(data)
 AgrupamientoxPisos=(data%>%group_by(floors)%>%
                       summarise(Cantidad=n()))
 MuestraFiltrada = filter(Muestra, Muestra$bedrooms>3  &
                                Muestra$price<500000)
 
 Muestra2 = mutate(Muestra, Muetsra$TamanoLote=(data$sqft_lot))
 
 #Functions
 MuestraMtrs2=mutate(Muestra2,TamanoLoteM2=(TamanoLote*0.3048))
 
 View(arrange(MuestraMtrs2,desc(price)))
 
 PrecioMtr2= if (MuestraMtrs2$price<500000) {
 
  Mutate(PrecioPorMtr2,MuestraMtrs2$price/MuestraMtrs2$TamanoLoteM2)}
  else   print ("Fuera de alcance")}
 
