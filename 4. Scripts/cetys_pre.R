
library(corrplot)
mydata<-read.csv(file="Categoria.csv", head=TRUE,sep=",")
mydata
# Análisis preliminar de datos de prueba PLANEA CETYS
summary(mydata)
#Histogramas para observar distribución de resultados
hist(mydata$Cantidad, col="red")
hist(mydata$Esp.Form, col="red")
hist(mydata$Cam..Rel., col="red")
#Correlación entre resultados
res <- cor(mydata)
#Vusializar tabla de correlación
res
#Correlaciograma
corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)
