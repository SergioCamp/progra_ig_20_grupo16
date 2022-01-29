library(sp)
library(fields)
library(raster)
library(gstat)
library(ncdf4)
library(climatol)
library(maps)
library(mapdata)

setwd("D:/Programacion Ciclo 3/Tarea Climatol")

#Nivel 1
#Ej.1
data(datcli)
diagwl(datcli, est = "Estación Campo de Marte", alt = 80, per = "2017", mlab="other", tcol = "green", pcol = "orange", sfcol = "blue", pfcol = "sky blue") 

#Ej.2
data(windfr)
rosavent(windfr, fnum=6, fint=2, flab=1, ang=pi/2.6, uni="km/s", col=rainbow(8))

#Nivel 2
#Ej.3
data(tmax)
write.table(dat, "Tmax_2001-2003.dat", row.names=FALSE, col.names=FALSE)
write.table(est.c, "Tmax_2001-2003.est", row.names=FALSE, col.names=FALSE)

dd2m('Tmax', 2001, 2003, ndec=2, valm=2)

homogen('Tmax', 2001, 2003, std=3, gp=3, ndec=2, suf='m', nm=12)

#Ej.4
data(Ptest)
write.table(dat, "Ptest_1951-2010.dat", row.names=FALSE, col.names=FALSE)
write.table(est.c, "Ptest_1951-2010.est", row.names=FALSE, col.names=FALSE)
datsubset('Ptest', 1951, 2010, 1965, 2005)

homogsplit('Ptest', 1965, 2005, xc=2, yc=39, 0, 0, nm=12, std=3, ndec=2, gp=4, expl=TRUE)

dahstat('Ptest', 1965, 2005, stat="me", ndc=2, vala=1, estcol=c(1,2,5))

#Nivel 3
#Ej.5

gr=expand.grid(x=seq(2.1,3.5,0.05),y=seq(39.1,40,0.001))
coordinates(gr)<-~ x+y
dahgrid('Ptest', 1965, 2005, grid=gr)

ptest_grid=nc_open('D:/Programacion Ciclo 3/Tarea Climatol/Ptest_1965-2005_m.nc')
print(ptest_grid)
ptest_var=ncvar_get(ptest_grid,'Ptest.m') 
ptest_lats=ncvar_get(ptest_grid,'lat')
ptest_lats=rev(ptest_lats)
ptest_longs=ncvar_get(ptest_grid,'lon')
dims_variable=dim(ptest_var)

image.plot(ptest_longs,ptest_lats,ptest_var[,length(ptest_lats):1], main=paste("Media de precipitacion"), xlab='Longitud', ylab='Latitud', col=rainbow(100))
map("world", add=TRUE)
