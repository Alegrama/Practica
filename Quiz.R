View(COVID_19)


hist(x=COVID_19$'Age of Subject',
       main  =  " Histograma Age of subject" ,
       xlab  =  " Edad del Sujeto ")


COVID=data.frame(COVID)
View(COVID)
names(COVID)
select(COVID_19,Region.of.residence)
varror(select(COVID,Region.of.residence))
View(varror)

View(Filtro1)= filter(COVID,`Region.of.residence`== "Delhi-NCR"))

plot(as.factor(Filtro1$Prefered.social.media.platform))

plot(as.factor(COVIDFiltrada$`Prefered social media platform`))

View(Filtro_Deh)=(filter(varror,Region.of.residence=="Delhi-NCR")
plot(COVID$Rating.of.Online.Class.experience)

Agrupamiento2=COVID%>%group_by(Age.of.Subject,Change.in.your.weight)%>%
                                 summarise(Cantidad=n())
View(Agrupamiento2)    
           
varror
plot(COVID$Age.of.Subject,COVID$Time.spent.on.self.study)

plot(x=COVID$'Rating.of.Online.Class.experience',
     main  =  " Analisis exploratorio")

View(agrupamiento1<- COVID %>% group_by(Rating.of.Online.Class.experience)%>%
  summarise(promedio=mean(Age.of.Subject)))

View(datafiltrada) = filter(COVID,"Region.of.residence"== 'Delhi-NCR'))
