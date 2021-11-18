#PARTE 1.

#1.Calcula los valores numéricos aproximados de

(0.3 * 0.15) / (0.3 * 0.15 + 0.2 * 0.8 + 0.5 * 0.12)

((5 ^ 6 )/(factorial(6)) ) *exp(-5)

(factorial(20)/(factorial(13)*factorial(7)))*0.4^7*0.6^13

#2.Realizar la siguiente suma

#a.1+2+3+...+1000
sum(seq(1:1000))

#b.1+2+4+8+16+...+1024
1+sum(2^seq(0:10))

#3. El vector grupo representa el grupo al que pertenece una serie de alumnos

#a. ¿Cuántos elementos tiene?
length(grupo)

#b. En qué posiciones del vector está la letra “A''?
which(grupo=="A")

#4. El vector nota representa la nota de un examen de los alumnos que están en los grupos del vector grupo.

#a.¿Cuánto suman todas las notas?
sum(nota)

#b.¿Cuál es la media aritmética de todas las notas?
mean(nota)

#c.¿En qué posiciones están las notas mayores de 7.0?
which(nota>7)

#d. Visualiza las notas ordenadas de mayor a menor
notasordenadas<-order(nota,na.last=TRUE,decreasing=TRUE)
nota[notasordenadas]

#e.¿En qué posición está la nota máxima?
match(max(nota),nota)

#5. A partir de los vectores grupo y nota definidos.

data.frame(grupo=c(grupo),nota=c(nota))
v1=data.frame(grupo=c(grupo),nota=c(nota))

#Suma de notas 10 primeros alumnos
sum(nota[1:10])

#Cuantos alumnos hay en el grupo C
length(nota[grupo=='C'])

#Cuantos alumnos han aprobado
length(nota[nota>5])

#Cuantos alumnos del grupo B han aprobado
length(nota[grupo=='B'&nota>5])

#Porcentaje de alumnos del grupo C han aprobado
AprobadosC=c(length(nota[grupo=='C'&nota>5]))
TotalC=length(nota[grupo=='C'])

(AprobadosC/TotalC)*100

#De qué grupos son la máxima y mínima notas de toda la muestra
max(nota)
min(nota)

v1[v1$nota==max(nota),]
v1[v1$nota==min(nota),]

#Nota media de los alumnos de grupo A y B, juntos, considerando sólo a los que han aprobado
mean(nota[grupo=='B'&nota>5])
mean(nota[grupo=='A'&nota>5])

mean(c(nota[grupo=='B'&nota>5],nota[grupo=='A'&nota>5]))

#6. Calcula el percentil 66 de las notas de todos los alumnos, y también de los alumnos del grupo C

quantile(nota, 66/100)
nota[nota<=5.5]
nota[nota>5.5]

# alumnos del grupo C
data.alumnos <- data.frame(grupo,nota) 
soloC <- data.alumnos[(data.alumnos$grupo == "C"),]
quantile(soloC$nota, 66/100)

#7.Un alumno tiene una nota de 4.9. ¿Qué porcentaje, del total de alumnos, tiene una nota menor o igual que la suya? ¿Y qué porcentaje tiene una nota mayor o igual que la suya?
MAYOR=length(nota[nota>=4.9])
MENOR=length(nota[nota<=4.9])
TOTAL=length(nota)

(MAYOR/TOTAL)*100
(MENOR/TOTAL)*100

#8.Realiza el gráfico de diagramas de caja de las notas de cada grupo, para poder comparar el nivel de cada uno de ellos.

boxplot(nota~grupo)

#Diagrama de caja de las notas de cada grupo
boxplot(nota~grupo,data=v1)

#9. Si la variable conc recoge la concentración de plomo (en ppm) en el aire de cierta zona durante un día completo
H=c(0:23)
ppm=c(30:53)
conc<-data.frame(H,ppm)

#¿Cuál ha sido la concentración máxima?
max(conc$ppm)

#¿En cuántos de los muestreos se ha superado la concentración de 40.0 ppm?
which(conc$ppm>40)

#¿Cuál ha sido la concentración media del día?
mean(conc$ppm)

#¿Cuáles fueron las 10 mediciones más bajas del día?
menconc=order(conc$ppm,na.last = TRUE,decreasing = TRUE)
conc$ppm[tail(menconc, 10)]

#Si la primera medida fue a las 00:00. ¿A qué hora del día se alcanzó la concentración máxima?
horas1<-c(rep(0,12),gl(23,12))
minutos1<-c(0,seq(5,55,5))
plomo1<-data.frame(conc, horas1,minutos1)
plomo1
c(plomo1$horas1[match(max(plomo1$conc),plomo1$conc)],plomo1$minutos1[match(max(plomo1$conc),plomo1$conc)])

conc
seq(0,24-24/288,24/288)
horas=c(seq(0,24-24/288,24/288))
df_plomo=data.frame(conc, horas)
df_plomo$horas[(max(conc)==df_plomo$conc)]

#PARTE 2

#1.Graficar los puntos (1,1),(2,4),(3,6),(4,8),(5,25),(6,36),(7,49),(8,61),(9,81),(10,100) en un plano usado Rstudio
abscisas<-c(1,2,3,4,5,6,7,8,9,10)
ordenadas<-c(1,4,6,8,25,36,49,61,81,100)
plot(x=abscisas,y=ordenadas)

#2. Ingresar la matriz A en RStudio
vect1<-c(1, 2, 3, 4, 2, 4, 6, 8, 3, 6, 9, 12)
A=matrix(data = vect1, nrow = 4, ncol = 3)

#3. Ingresar la matriz identidad de tamaÃ±o 3
diag(1,3,3)
diag(3)

#4. Crea una funciÃ³n que cree una matriz nula ingresando las dimensiones
matrixnula<-function(x,y) {
  matrix(0,x,y)
}

#5. Modificar la matriz diag(4), para que se parezca a la matriz B
vec3<-c(0, 2, 3, 4)
diag(x =vec3, nrow = 4, ncol = 4)
B=diag(x =vec3, nrow = 4, ncol = 4)

diag(c(0,2,3,4),4,4)

#6. Obtener la matriz transpuesta de A (ejercicio 2)
t(A)

#7. Realizar las siguientes operaciones A+B, A - B, 3B y AB
#Matriz A (hecha en la 2)
A=matrix(data = vect1, nrow = 4, ncol = 3)

#Matriz B
B=diag(x =vec3, nrow = 4, ncol = 4)

A+B

A-B

3*B

A%*%B

#8.Crea una funciÃ³n para calcular P6 

mt<-c(1,-2,1,2,4,0,3,-2,1)
P<-matrix(mt,3)
fun<- function(x){
  (((((x%*%x)%*%x)%*%x)%*%x)%*%x)
}
fun(P)

#9. Resolver el sistema de ecuaciones 
#3x-y+z=-1
#9x-2y+z=-9
#3x+y-2z=-9

A=cbind(c(3,9,3),c(-1,-2,1),c(1,1,-2))
B=c(-1,-9,-9)
solve(A,B)

#10.det sirve para hallar por separado el modulo del determinante de una matriz
help(det)

mtrx=matrix(c(-2,2,-3,-1,1,3,2,0,-1),3,3)
det(mtrx)

#eigen sirve para hallar por separado los valores y vectores propios de una matriz
help(eigen)

eigen(mtrx)

#11.	 Considerando las matrices
v <- (1:10)
v2 <- v*2
v3 <- v*3
v4 <- v*4
v5 <- v*5
B <- matrix(c(v,v2,v3,v4,v5),10)
X <- c(0,1,0,0,1,1,0,1,1,0,0,1,0,0,1,1,0,1,0,1,0,1,0,1,0)
A <- matrix(X,5)
B%*%A - B%*%t(A)

#12.Considere  β = ( X^t * X )^-1 * X^t * Y
x<-matrix(c(1,1,1,1,1,1,-1,0,1,2),nrow=5,ncol=2)
y<-matrix(c(0,0,1,1,3),nrow = 5,ncol = 1)
(solve(t(x)%%x)%%t(x))%*%y

#13.
data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)


co2
year


diff(co2)
y <- c(0,diff(co2))
y


plot(year, y, type="o", pch=20, xlab="años", ylab="diferencia de concentración de co2", main="Diferencia de co2 entre dos años consecutivos", col="blue", font=2)


plot(year, y, xlim=c(1956, 2020), type="o", pch=20, xlab="años", ylab="diferencia de concentración de co2", main="Diferencia de co2 entre dos años consecutivos", col="blue", font=2)
points(2020, 2.64, pch=4, col="red")


#14.Lee el archivo rainfall.csv como un data.frame. Calcula e imprime un vector con los nombres de las estaciones donde al menos uno de los meses tiene una precipitaciÃ³n superior a 180mm

df=read.csv("D:/Progra/rainfall.csv")

df[(df$sep>180)|(df$oct>180)|(df$nov>180)|(df$dec>180)|(df$jan>180)|(df$feb>180)|(df$mar>180)|(df$apr>180)|(df$may>180),]

M=df[(df$sep>180)|(df$oct>180)|(df$nov>180)|(df$dec>180)|(df$jan>180)|(df$feb>180)|(df$mar>180)|(df$apr>180)|(df$may>180),]

c((M$name))
nombre_estacion=c((M$name))
