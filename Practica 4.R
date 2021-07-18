#PRACTICA 4

#Conexiones SQL
DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)

DB_Northwind=dbGetQuery(DB_Northwind,"select * from [sales].[customers]")
View(DB_Northwind)

#Dplyr
library("dplyr")
Agrupacion = DB_Northwind %>% group_by(state, city)%>% 
  summarise(Cantidad_Ciudad=n())

View(Agrupacion)

#plotly
library("plotly")
plot_ly(data = Agrupacion, X = ~Cantidad_Ciudad, y = ~state, main="Northwind")


#GGPLOT

ggplot(data = Agrupacion, aes(x=city,y=Cantidad_Ciudad))+
  geom_point()+
  geom_abline(intercept = 0,
              slope = 0.105,
              col = 'blue') +
  geom_vline(xintercept = 103,
             col = 'red')
#PLOT
plot(as.factor(Agrupacion$state))

qplot(state,data = Agrupacion)
