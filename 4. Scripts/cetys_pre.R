
library(corrplot)
mydata<-read.csv(file="Categoria.csv", head=TRUE,sep=",")
mydata
# An�lisis preliminar de datos de prueba PLANEA CETYS
summary(mydata)
#Histogramas para observar distribuci�n de resultados
hist(mydata$Cantidad, col="red")
hist(mydata$Esp.Form, col="red")
hist(mydata$Cam..Rel., col="red")
#Correlaci�n entre resultados
res <- cor(mydata)
#Vusializar tabla de correlaci�n
res
#Correlaciograma
corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)