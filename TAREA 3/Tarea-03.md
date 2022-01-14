Tarea N°03
================
GRUPO 16
13/1/2022

> **Integrantes**
>
> — *Campos Torres Sergio Junior*
>
> — *Pinedo Cienfuegos Diana Melissa*

**Usamos las librerias necesarias**

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.5     v purrr   0.3.4
    ## v tibble  3.1.6     v dplyr   1.0.7
    ## v tidyr   1.1.4     v stringr 1.4.0
    ## v readr   2.1.0     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(nycflights13)
```

**Parte 1: Dplyr - filter**

**1.Encuentra todos los vuelos que:**

*a.Tuvieron un retraso de llegada de dos o más horas*

``` r
dplyr::filter(flights, arr_delay >= 120)
```

    ## # A tibble: 10,200 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      811            630       101     1047            830
    ##  2  2013     1     1      848           1835       853     1001           1950
    ##  3  2013     1     1      957            733       144     1056            853
    ##  4  2013     1     1     1114            900       134     1447           1222
    ##  5  2013     1     1     1505           1310       115     1638           1431
    ##  6  2013     1     1     1525           1340       105     1831           1626
    ##  7  2013     1     1     1549           1445        64     1912           1656
    ##  8  2013     1     1     1558           1359       119     1718           1515
    ##  9  2013     1     1     1732           1630        62     2028           1825
    ## 10  2013     1     1     1803           1620       103     2008           1750
    ## # ... with 10,190 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*b. Volaron a Houston (IAH o HOU)*

``` r
dplyr::filter(flights, dest=="IAH"|dest=="HOU")
```

    ## # A tibble: 9,313 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      517            515         2      830            819
    ##  2  2013     1     1      533            529         4      850            830
    ##  3  2013     1     1      623            627        -4      933            932
    ##  4  2013     1     1      728            732        -4     1041           1038
    ##  5  2013     1     1      739            739         0     1104           1038
    ##  6  2013     1     1      908            908         0     1228           1219
    ##  7  2013     1     1     1028           1026         2     1350           1339
    ##  8  2013     1     1     1044           1045        -1     1352           1351
    ##  9  2013     1     1     1114            900       134     1447           1222
    ## 10  2013     1     1     1205           1200         5     1503           1505
    ## # ... with 9,303 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*c. Fueron operados por United, American o Delta*

``` r
filter(flights, carrier=="UU"|carrier=="AA"|carrier=="DL")
```

    ## # A tibble: 80,839 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      542            540         2      923            850
    ##  2  2013     1     1      554            600        -6      812            837
    ##  3  2013     1     1      558            600        -2      753            745
    ##  4  2013     1     1      559            600        -1      941            910
    ##  5  2013     1     1      602            610        -8      812            820
    ##  6  2013     1     1      606            610        -4      858            910
    ##  7  2013     1     1      606            610        -4      837            845
    ##  8  2013     1     1      615            615         0      833            842
    ##  9  2013     1     1      623            610        13      920            915
    ## 10  2013     1     1      628            630        -2     1137           1140
    ## # ... with 80,829 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*d. Partieron en invierno del hemisferio sur (julio, agosto y
septiembre)*

``` r
filter(flights, month %in% c(7, 8, 9))
```

    ## # A tibble: 86,326 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     7     1        1           2029       212      236           2359
    ##  2  2013     7     1        2           2359         3      344            344
    ##  3  2013     7     1       29           2245       104      151              1
    ##  4  2013     7     1       43           2130       193      322             14
    ##  5  2013     7     1       44           2150       174      300            100
    ##  6  2013     7     1       46           2051       235      304           2358
    ##  7  2013     7     1       48           2001       287      308           2305
    ##  8  2013     7     1       58           2155       183      335             43
    ##  9  2013     7     1      100           2146       194      327             30
    ## 10  2013     7     1      100           2245       135      337            135
    ## # ... with 86,316 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*e. Llegaron más de dos horas tarde, pero no salieron tarde*

``` r
filter(flights, dep_delay <= 0 & arr_delay > 120)
```

    ## # A tibble: 29 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1    27     1419           1420        -1     1754           1550
    ##  2  2013    10     7     1350           1350         0     1736           1526
    ##  3  2013    10     7     1357           1359        -2     1858           1654
    ##  4  2013    10    16      657            700        -3     1258           1056
    ##  5  2013    11     1      658            700        -2     1329           1015
    ##  6  2013     3    18     1844           1847        -3       39           2219
    ##  7  2013     4    17     1635           1640        -5     2049           1845
    ##  8  2013     4    18      558            600        -2     1149            850
    ##  9  2013     4    18      655            700        -5     1213            950
    ## 10  2013     5    22     1827           1830        -3     2217           2010
    ## # ... with 19 more rows, and 11 more variables: arr_delay <dbl>, carrier <chr>,
    ## #   flight <int>, tailnum <chr>, origin <chr>, dest <chr>, air_time <dbl>,
    ## #   distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*f. Se retrasaron por lo menos una hora, pero repusieron más de 30
minutos en vuelo*

``` r
filter(flights, dep_delay >= 60 & arr_delay > 30)
```

    ## # A tibble: 26,563 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      811            630       101     1047            830
    ##  2  2013     1     1      826            715        71     1136           1045
    ##  3  2013     1     1      848           1835       853     1001           1950
    ##  4  2013     1     1      957            733       144     1056            853
    ##  5  2013     1     1     1114            900       134     1447           1222
    ##  6  2013     1     1     1120            944        96     1331           1213
    ##  7  2013     1     1     1301           1150        71     1518           1345
    ##  8  2013     1     1     1337           1220        77     1649           1531
    ##  9  2013     1     1     1400           1250        70     1645           1502
    ## 10  2013     1     1     1505           1310       115     1638           1431
    ## # ... with 26,553 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*g. Partieron entre la medianoche y las 6 a.m. (incluyente)*

``` r
filter(flights, dep_time %in% c(1:600) | dep_time == 2400)
```

    ## # A tibble: 9,373 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      517            515         2      830            819
    ##  2  2013     1     1      533            529         4      850            830
    ##  3  2013     1     1      542            540         2      923            850
    ##  4  2013     1     1      544            545        -1     1004           1022
    ##  5  2013     1     1      554            600        -6      812            837
    ##  6  2013     1     1      554            558        -4      740            728
    ##  7  2013     1     1      555            600        -5      913            854
    ##  8  2013     1     1      557            600        -3      709            723
    ##  9  2013     1     1      557            600        -3      838            846
    ## 10  2013     1     1      558            600        -2      753            745
    ## # ... with 9,363 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

**2. Otra función de dplyr que es útil para usar filtros es
between().¿Qué hace? ¿Puedes usarla para simplificar el código necesario
para responder a los desafíos anteriores?**

``` r
##Between evalúa si cada elemento de un vector se encuentra entre dos valores.Devuelve un vector lógico, por lo que se puede usar dentro de filter para filtrar datos de una tabla.
```

**3. ¿Cuántos vuelos tienen datos faltantes en horario_salida? ¿Qué
otras variables tienen valores faltantes? ¿Qué representan estas
filas?**

``` r
flights %>% 
  summarise_all(funs(sum(is.na(.))))
```

    ## Warning: `funs()` was deprecated in dplyr 0.8.0.
    ## Please use a list of either functions or lambdas: 
    ## 
    ##   # Simple named list: 
    ##   list(mean = mean, median = median)
    ## 
    ##   # Auto named with `tibble::lst()`: 
    ##   tibble::lst(mean, median)
    ## 
    ##   # Using lambdas
    ##   list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.

    ## # A tibble: 1 x 19
    ##    year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##   <int> <int> <int>    <int>          <int>     <int>    <int>          <int>
    ## 1     0     0     0     8255              0      8255     8713              0
    ## # ... with 11 more variables: arr_delay <int>, carrier <int>, flight <int>,
    ## #   tailnum <int>, origin <int>, dest <int>, air_time <int>, distance <int>,
    ## #   hour <int>, minute <int>, time_hour <int>

``` r
##En el caso del horario de salida (dep_time) el valor NA representa que estos vuelos no llegaron a salir, por lo que tampoco existe un retraso en la salida (dep_delay) a pesar de que estos ya tenían un horario programado (sched_dep_time).
```

**4. ¿Por qué NA^0 no es faltante? (LO CAMBIAN UN POCO)**

``` r
##Dado que el NA podría tomar cualquier valor, este valor a la potencia cero es igual a 1
```

*¿Por qué NA \| TRUE no es faltante?*

``` r
##Es igual a TRUE pues el NA se entiende como un valor lógico (`TRUE` or `FALSE`) y por lógica proposicional `TRUE` | `TRUE`  y  `FALSE` | `TRUE` es siempre igual a `TRUE`.
```

*¿Por qué FALSE & NA no es faltante?*

``` r
##Es igual a `TRUE` pues el NA se entiende como un valor lógico (`TRUE` or `FALSE`) y por lógica proposicional `TRUE`&`FALSE` y `FALSE`&`FALSE` es siempre `FALSE`
```

**Parte 2: Dplyr - arrange**

**1. ¿Cómo podrías usar arrange() para ordenar todos los valores
faltantes al comienzo? (Sugerencia: usa is.na()).**

``` r
arrange(flights,desc(is.na(air_time)))
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1     1525           1530        -5     1934           1805
    ##  2  2013     1     1     1528           1459        29     2002           1647
    ##  3  2013     1     1     1740           1745        -5     2158           2020
    ##  4  2013     1     1     1807           1738        29     2251           2103
    ##  5  2013     1     1     1939           1840        59       29           2151
    ##  6  2013     1     1     1952           1930        22     2358           2207
    ##  7  2013     1     1     2016           1930        46       NA           2220
    ##  8  2013     1     1       NA           1630        NA       NA           1815
    ##  9  2013     1     1       NA           1935        NA       NA           2240
    ## 10  2013     1     1       NA           1500        NA       NA           1825
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

**2. Ordena ‘vuelos’ para encontrar los vuelos más retrasados. Encuentra
los vuelos que salieron más temprano.**

*Vuelos que salieron con más retraso*

``` r
arrange(flights, desc(arr_delay))
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     9      641            900      1301     1242           1530
    ##  2  2013     6    15     1432           1935      1137     1607           2120
    ##  3  2013     1    10     1121           1635      1126     1239           1810
    ##  4  2013     9    20     1139           1845      1014     1457           2210
    ##  5  2013     7    22      845           1600      1005     1044           1815
    ##  6  2013     4    10     1100           1900       960     1342           2211
    ##  7  2013     3    17     2321            810       911      135           1020
    ##  8  2013     7    22     2257            759       898      121           1026
    ##  9  2013    12     5      756           1700       896     1058           2020
    ## 10  2013     5     3     1133           2055       878     1250           2215
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*Vuelos que salieron con más temprano*

``` r
arrange(flights, arr_delay)
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     5     7     1715           1729       -14     1944           2110
    ##  2  2013     5    20      719            735       -16      951           1110
    ##  3  2013     5     2     1947           1949        -2     2209           2324
    ##  4  2013     5     6     1826           1830        -4     2045           2200
    ##  5  2013     5     4     1816           1820        -4     2017           2131
    ##  6  2013     5     2     1926           1929        -3     2157           2310
    ##  7  2013     5     6     1753           1755        -2     2004           2115
    ##  8  2013     5     7     2054           2055        -1     2317             28
    ##  9  2013     5    13      657            700        -3      908           1019
    ## 10  2013     1     4     1026           1030        -4     1305           1415
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

**3. Ordena `vuelos` para encontrar los vuelos más rápidos (que viajaron
a mayor velocidad).**

*velocidad es igual a `distancia`/`tiempo_vuelo`*

``` r
arrange(flights,desc(distance/air_time))
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     5    25     1709           1700         9     1923           1937
    ##  2  2013     7     2     1558           1513        45     1745           1719
    ##  3  2013     5    13     2040           2025        15     2225           2226
    ##  4  2013     3    23     1914           1910         4     2045           2043
    ##  5  2013     1    12     1559           1600        -1     1849           1917
    ##  6  2013    11    17      650            655        -5     1059           1150
    ##  7  2013     2    21     2355           2358        -3      412            438
    ##  8  2013    11    17      759            800        -1     1212           1255
    ##  9  2013    11    16     2003           1925        38       17             36
    ## 10  2013    11    16     2349           2359       -10      402            440
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

**4. ¿Cuáles vuelos viajaron más lejos? ¿Cuál viajó más cerca?**

*- Vuelos que viajaron más lejos*

``` r
arrange(flights,desc(distance))
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      857            900        -3     1516           1530
    ##  2  2013     1     2      909            900         9     1525           1530
    ##  3  2013     1     3      914            900        14     1504           1530
    ##  4  2013     1     4      900            900         0     1516           1530
    ##  5  2013     1     5      858            900        -2     1519           1530
    ##  6  2013     1     6     1019            900        79     1558           1530
    ##  7  2013     1     7     1042            900       102     1620           1530
    ##  8  2013     1     8      901            900         1     1504           1530
    ##  9  2013     1     9      641            900      1301     1242           1530
    ## 10  2013     1    10      859            900        -1     1449           1530
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*- Vuelos que viajaron más cerca*

``` r
arrange(flights, distance)
```

    ## # A tibble: 336,776 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     7    27       NA            106        NA       NA            245
    ##  2  2013     1     3     2127           2129        -2     2222           2224
    ##  3  2013     1     4     1240           1200        40     1333           1306
    ##  4  2013     1     4     1829           1615       134     1937           1721
    ##  5  2013     1     4     2128           2129        -1     2218           2224
    ##  6  2013     1     5     1155           1200        -5     1241           1306
    ##  7  2013     1     6     2125           2129        -4     2224           2224
    ##  8  2013     1     7     2124           2129        -5     2212           2224
    ##  9  2013     1     8     2127           2130        -3     2304           2225
    ## 10  2013     1     9     2126           2129        -3     2217           2224
    ## # ... with 336,766 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

**Parte 3: Dplyr - select**

**1. Haz una lluvia de ideas sobre tantas maneras como sea posible para
seleccionar dep_time, dep_delay, arr_time, and arr_delay de flights.**

*- Selecionadas por su nombre:*

``` r
select(flights, dep_time, dep_delay, arr_time, arr_delay)
```

    ## # A tibble: 336,776 x 4
    ##    dep_time dep_delay arr_time arr_delay
    ##       <int>     <dbl>    <int>     <dbl>
    ##  1      517         2      830        11
    ##  2      533         4      850        20
    ##  3      542         2      923        33
    ##  4      544        -1     1004       -18
    ##  5      554        -6      812       -25
    ##  6      554        -4      740        12
    ##  7      555        -5      913        19
    ##  8      557        -3      709       -14
    ##  9      557        -3      838        -8
    ## 10      558        -2      753         8
    ## # ... with 336,766 more rows

``` r
##Otra forma es seleccionando las variables que empiezan con "horario" y "atraso" con la función `starts_with()` ("empieza con") del paquete dyplr

select(flights , starts_with( " horario " ), starts_with( " atraso " ))
```

    ## # A tibble: 336,776 x 0

``` r
##También es útil en este caso utilizar la función `ends_with()`:

select(flights , ends_with( " llegada " ),ends_with( " salida " ))
```

    ## # A tibble: 336,776 x 0

``` r
##Y una manera adicional es usando la función `contains()`:

select(flights ,contains( " horario " ),contains( " atraso " ))
```

    ## # A tibble: 336,776 x 0

**2. ¿Qué sucede si incluyes el nombre de una variable varias veces en
una llamada a select()?**

``` r
##A diferencia de lo que podría pensarse inicialmente, aunque se incluya más de una vez una variable al utilizar `select()` esta solo se considerará una vez:

select(flights, dep_time, dep_time, dep_time)
```

    ## # A tibble: 336,776 x 1
    ##    dep_time
    ##       <int>
    ##  1      517
    ##  2      533
    ##  3      542
    ##  4      544
    ##  5      554
    ##  6      554
    ##  7      555
    ##  8      557
    ##  9      557
    ## 10      558
    ## # ... with 336,766 more rows

**3. ¿Qué hace la función `one_of()`? ¿Por qué podría ser útil en
conjunto con este vector?**

``` r
vars  <- c ( "year" , "month" , "day" , "dep_delay" , "arr_time" )

##Con la función `one_of()` podemos indicar las variables que queremos seleccionar con el nombre del vector que las contiene.*

##La función `one_of()` selecciona todas las variables que están en el vector `vars`:

select(flights, one_of(vars))
```

    ## # A tibble: 336,776 x 5
    ##     year month   day dep_delay arr_time
    ##    <int> <int> <int>     <dbl>    <int>
    ##  1  2013     1     1         2      830
    ##  2  2013     1     1         4      850
    ##  3  2013     1     1         2      923
    ##  4  2013     1     1        -1     1004
    ##  5  2013     1     1        -6      812
    ##  6  2013     1     1        -4      740
    ##  7  2013     1     1        -5      913
    ##  8  2013     1     1        -3      709
    ##  9  2013     1     1        -3      838
    ## 10  2013     1     1        -2      753
    ## # ... with 336,766 more rows

**Parte 4: Dplyr - mutate**

**1. Las variables horario_salida y salida_programada tienen un formato
conveniente para leer, pero es difícil realizar cualquier cálculo con
ellas porque no son realmente números continuos. Transfórmalas hacia un
formato más conveniente como número de minutos desde la medianoche.**

``` r
mutate(flights, salida_programada_min = (sched_arr_time %/% 100 * 60 + sched_arr_time %% 100) %% 1440)
```

    ## # A tibble: 336,776 x 20
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      517            515         2      830            819
    ##  2  2013     1     1      533            529         4      850            830
    ##  3  2013     1     1      542            540         2      923            850
    ##  4  2013     1     1      544            545        -1     1004           1022
    ##  5  2013     1     1      554            600        -6      812            837
    ##  6  2013     1     1      554            558        -4      740            728
    ##  7  2013     1     1      555            600        -5      913            854
    ##  8  2013     1     1      557            600        -3      709            723
    ##  9  2013     1     1      557            600        -3      838            846
    ## 10  2013     1     1      558            600        -2      753            745
    ## # ... with 336,766 more rows, and 12 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>,
    ## #   salida_programada_min <dbl>

``` r
mutate(flights, horario_salida_min = (arr_time %/% 100 * 60 + arr_time %% 100) %% 1440)
```

    ## # A tibble: 336,776 x 20
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      517            515         2      830            819
    ##  2  2013     1     1      533            529         4      850            830
    ##  3  2013     1     1      542            540         2      923            850
    ##  4  2013     1     1      544            545        -1     1004           1022
    ##  5  2013     1     1      554            600        -6      812            837
    ##  6  2013     1     1      554            558        -4      740            728
    ##  7  2013     1     1      555            600        -5      913            854
    ##  8  2013     1     1      557            600        -3      709            723
    ##  9  2013     1     1      557            600        -3      838            846
    ## 10  2013     1     1      558            600        -2      753            745
    ## # ... with 336,766 more rows, and 12 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>,
    ## #   horario_salida_min <dbl>

**2. Compara ‘tiempo_vuelo’ con ‘horario_llegada’ - ‘horario_salida’.
¿Qué esperas ver? ¿Qué ves? ¿Qué necesitas hacer para arreglarlo?**

``` r
flights %>%
  filter(arr_time - dep_time == air_time)
```

    ## # A tibble: 1,218 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      746            746         0     1119           1129
    ##  2  2013     1     1      857            900        -3     1516           1530
    ##  3  2013     1     1      903            820        43     1045            955
    ##  4  2013     1     1     1651           1650         1     2000           2004
    ##  5  2013     1     1     2006           2000         6     2132           2130
    ##  6  2013     1     3      601            600         1      730            730
    ##  7  2013     1     3     1038           1042        -4     1154           1206
    ##  8  2013     1     3     1709           1700         9     1914           1930
    ##  9  2013     1     4      805            759         6     1019           1025
    ## 10  2013     1     4     1803           1810        -7     1920           1945
    ## # ... with 1,208 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

``` r
##Se espera que la diferencia entre el horario de llegada y el horario de salida (en minutos después de la medianoche) se igual al tiempo de vuelo. Se visualiza que no se cumple en todos los casos con un filter. Esto lo arreglaremos mediante el uso de mutate: flights %>%
```

**3. Compara `horario_salida`, `salida_programada`, y `atraso_salida`.
¿Cómo esperarías que esos tres números estén relacionados?**

``` r
flights %>%
  mutate(dep_time, horario_salida=dep_time%%100+(dep_time-dep_time%%100)/100*60) %>%
  mutate(sched_dep_time, salida_programada=sched_dep_time%%100+(sched_dep_time-sched_dep_time%%100)/100*60) %>%
  select(horario_salida, salida_programada, dep_delay) %>%
  filter(salida_programada + dep_delay != horario_salida)
```

    ## # A tibble: 1,207 x 3
    ##    horario_salida salida_programada dep_delay
    ##             <dbl>             <dbl>     <dbl>
    ##  1            528              1115       853
    ##  2             42              1439        43
    ##  3             86              1370       156
    ##  4             32              1439        33
    ##  5             50              1305       185
    ##  6            155              1439       156
    ##  7             25              1439        26
    ##  8             66              1365       141
    ##  9             14              1439        15
    ## 10             37              1350       127
    ## # ... with 1,197 more rows

**4. Encuentra los 10 vuelos más retrasados utilizando una función de
ordenamiento. ¿Cómo quieres manejar los empates? Lee atentamente la
documentación de `min_rank()`.**

``` r
##La función min_rank() es aquella que devuelve los valores de un vector de manera de ranking pero, como este establece un “min”, a los empates se les designa el rango más bajo posible.
v_retraso<-head(arrange(flights,desc(arr_delay)),10)
v_retraso
```

    ## # A tibble: 10 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     9      641            900      1301     1242           1530
    ##  2  2013     6    15     1432           1935      1137     1607           2120
    ##  3  2013     1    10     1121           1635      1126     1239           1810
    ##  4  2013     9    20     1139           1845      1014     1457           2210
    ##  5  2013     7    22      845           1600      1005     1044           1815
    ##  6  2013     4    10     1100           1900       960     1342           2211
    ##  7  2013     3    17     2321            810       911      135           1020
    ##  8  2013     7    22     2257            759       898      121           1026
    ##  9  2013    12     5      756           1700       896     1058           2020
    ## 10  2013     5     3     1133           2055       878     1250           2215
    ## # ... with 11 more variables: arr_delay <dbl>, carrier <chr>, flight <int>,
    ## #   tailnum <chr>, origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>,
    ## #   hour <dbl>, minute <dbl>, time_hour <dttm>

``` r
VR<-v_retraso$arr_delay
VR
```

    ##  [1] 1272 1127 1109 1007  989  931  915  895  878  875

``` r
min_rank(VR)
```

    ##  [1] 10  9  8  7  6  5  4  3  2  1

**5. ¿Qué devuelve `1:3 + 1:10`? ¿Por qué?**

``` r
1:3+1:10
```

    ## Warning in 1:3 + 1:10: longitud de objeto mayor no es múltiplo de la longitud de
    ## uno menor

    ##  [1]  2  4  6  5  7  9  8 10 12 11

``` r
##Como los objetos no tienen la misma longitud, R repite el primer vector hasta obtener la misma longitud, es decir, 1 2 3 1 2 3 1 2 3 1. Una vez hecho esto se realiza la suma de ambas secuencias
```

**6. ¿Qué funciones trigonométricas proporciona R?**

``` r
##Posee las razones trigonométricas seno, coseno y tangente y sus inversas (arcsen, arccos y arctan)

x=pi/4
sin(x)
```

    ## [1] 0.7071068

``` r
cos(x)
```

    ## [1] 0.7071068

``` r
tan(x)
```

    ## [1] 1

``` r
y=1/2
asin(y)
```

    ## [1] 0.5235988

``` r
acos(y)
```

    ## [1] 1.047198

``` r
atan(y)
```

    ## [1] 0.4636476

``` r
##Para obtener las razones trigonométricas cotangente, secante y cosecante; así como sus inversas (arccot, arcsec, arccsc) invertimos las anteriores

x=pi/4
1/sin(x)
```

    ## [1] 1.414214

``` r
1/cos(x)
```

    ## [1] 1.414214

``` r
1/tan(x)
```

    ## [1] 1

``` r
y=1/2
asin(1/y)
```

    ## Warning in asin(1/y): Se han producido NaNs

    ## [1] NaN

``` r
acos(1/y)
```

    ## Warning in acos(1/y): Se han producido NaNs

    ## [1] NaN

``` r
atan(1/y)
```

    ## [1] 1.107149

**Parte 5: Dplyr - group by & summarize**

**1.Haz una lluvia de ideas de al menos 5 formas diferentes de evaluar
las características de un retraso típico de un grupo de vuelos.
Considera los siguientes escenarios:**

*Un vuelo llega 15 minutos antes 50% del tiempo, y 15 minutos tarde 50%
del tiempo*

``` r
filter(flights, arr_delay < 15)%>%
group_by(year, month, day,flight)%>%  
summarise(v_15mina=quantile(arr_delay, 0.5, na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month', 'day'. You can override using the `.groups` argument.

    ## # A tibble: 227,640 x 5
    ## # Groups:   year, month, day [365]
    ##     year month   day flight v_15mina
    ##    <int> <int> <int>  <int>    <dbl>
    ##  1  2013     1     1      1      6  
    ##  2  2013     1     1      3      9.5
    ##  3  2013     1     1      4    -14.5
    ##  4  2013     1     1      6    -19  
    ##  5  2013     1     1      7    -19  
    ##  6  2013     1     1      9      4  
    ##  7  2013     1     1     11    -18  
    ##  8  2013     1     1     15     -8  
    ##  9  2013     1     1     16     -6  
    ## 10  2013     1     1     19     11  
    ## # ... with 227,630 more rows

``` r
filter(flights, arr_delay > 15)%>%
group_by(year, month, day,flight)%>%  
summarise(v_15mint=quantile(arr_delay, 0.5, na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month', 'day'. You can override using the `.groups` argument.

    ## # A tibble: 75,402 x 5
    ## # Groups:   year, month, day [365]
    ##     year month   day flight v_15mint
    ##    <int> <int> <int>  <int>    <dbl>
    ##  1  2013     1     1      1       29
    ##  2  2013     1     1      8       27
    ##  3  2013     1     1     11       49
    ##  4  2013     1     1     12       20
    ##  5  2013     1     1     15       21
    ##  6  2013     1     1     17       42
    ##  7  2013     1     1     21       49
    ##  8  2013     1     1     22       33
    ##  9  2013     1     1     30       23
    ## 10  2013     1     1     32       60
    ## # ... with 75,392 more rows

*Un vuelo llega siempre 10 minutos tarde*

``` r
filter(flights, arr_delay == 10)%>%
group_by(year, month, day,flight)
```

    ## # A tibble: 3,373 x 19
    ## # Groups:   year, month, day, flight [3,370]
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      624            630        -6      840            830
    ##  2  2013     1     1      717            720        -3      850            840
    ##  3  2013     1     1      745            745         0     1135           1125
    ##  4  2013     1     1      805            805         0     1015           1005
    ##  5  2013     1     1      811            815        -4     1026           1016
    ##  6  2013     1     1      921            900        21     1237           1227
    ##  7  2013     1     1     1158           1205        -7     1530           1520
    ##  8  2013     1     1     1211           1215        -4     1423           1413
    ##  9  2013     1     1     1455           1459        -4     1655           1645
    ## 10  2013     1     1     1554           1600        -6     1830           1820
    ## # ... with 3,363 more rows, and 11 more variables: arr_delay <dbl>,
    ## #   carrier <chr>, flight <int>, tailnum <chr>, origin <chr>, dest <chr>,
    ## #   air_time <dbl>, distance <dbl>, hour <dbl>, minute <dbl>, time_hour <dttm>

*Un vuelo llega 30 minutos antes 50% del tiempo, y 30 minutos tarde 50%
del tiempo*

``` r
filter(flights, arr_delay < 30)%>%
group_by(year, month, day)%>%  
summarise(v_30minta=quantile(arr_delay, 0.5, na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month'. You can override using the `.groups` argument.

    ## # A tibble: 365 x 4
    ## # Groups:   year, month [12]
    ##     year month   day v_30minta
    ##    <int> <int> <int>     <dbl>
    ##  1  2013     1     1        -1
    ##  2  2013     1     2         0
    ##  3  2013     1     3        -2
    ##  4  2013     1     4       -10
    ##  5  2013     1     5        -8
    ##  6  2013     1     6        -4
    ##  7  2013     1     7       -11
    ##  8  2013     1     8        -9
    ##  9  2013     1     9        -7
    ## 10  2013     1    10       -12
    ## # ... with 355 more rows

``` r
filter(flights, arr_delay >30)%>%
group_by(year, month, day)%>%  
summarise(v_30mint=quantile(arr_delay, 0.5, na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month'. You can override using the `.groups` argument.

    ## # A tibble: 365 x 4
    ## # Groups:   year, month [12]
    ##     year month   day v_30mint
    ##    <int> <int> <int>    <dbl>
    ##  1  2013     1     1     54  
    ##  2  2013     1     2     58  
    ##  3  2013     1     3     51  
    ##  4  2013     1     4     49  
    ##  5  2013     1     5     65  
    ##  6  2013     1     6     52  
    ##  7  2013     1     7     59  
    ##  8  2013     1     8     50  
    ##  9  2013     1     9     48.5
    ## 10  2013     1    10     48  
    ## # ... with 355 more rows

*Un vuelo llega a tiempo en el 99% de los casos. 1% de las veces llega 2
horas tarde*

``` r
filter(flights, arr_delay == 0)%>%
group_by(year, month, day)%>%  
summarise(v_0min=quantile(arr_delay, 0.99, na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month'. You can override using the `.groups` argument.

    ## # A tibble: 365 x 4
    ## # Groups:   year, month [12]
    ##     year month   day v_0min
    ##    <int> <int> <int>  <dbl>
    ##  1  2013     1     1      0
    ##  2  2013     1     2      0
    ##  3  2013     1     3      0
    ##  4  2013     1     4      0
    ##  5  2013     1     5      0
    ##  6  2013     1     6      0
    ##  7  2013     1     7      0
    ##  8  2013     1     8      0
    ##  9  2013     1     9      0
    ## 10  2013     1    10      0
    ## # ... with 355 more rows

``` r
filter(flights, arr_delay > 120)%>%
group_by(year, month, day)%>%  
summarise(v_120mint=quantile(arr_delay,0.01 , na.rm=TRUE))
```

    ## `summarise()` has grouped output by 'year', 'month'. You can override using the `.groups` argument.

    ## # A tibble: 364 x 4
    ## # Groups:   year, month [12]
    ##     year month   day v_120mint
    ##    <int> <int> <int>     <dbl>
    ##  1  2013     1     1      123 
    ##  2  2013     1     2      124.
    ##  3  2013     1     3      127.
    ##  4  2013     1     4      125.
    ##  5  2013     1     5      132.
    ##  6  2013     1     6      122.
    ##  7  2013     1     7      134.
    ##  8  2013     1     8      126.
    ##  9  2013     1     9      124.
    ## 10  2013     1    10      139.
    ## # ... with 354 more rows

*¿Qué es más importante: retraso de la llegada o demora de salida?*

``` r
##Es más importante la demora en la salida, ya que esto también repercute en la hora de llegada
```

**2.Sugiere un nuevo enfoque que te dé el mismo output que no_cancelados
%>% count(destino) y no_cancelado %>% count(codigo_cola, wt = distancia)
(sin usar count())**

``` r
no_cancelados <- flights %>% 
  filter(!is.na(arr_delay), !is.na(dep_delay))

no_cancelados %>% count(distance)
```

    ## # A tibble: 213 x 2
    ##    distance     n
    ##       <dbl> <int>
    ##  1       80    48
    ##  2       94   895
    ##  3       96   598
    ##  4      116   412
    ##  5      143   418
    ##  6      160   358
    ##  7      169   524
    ##  8      173   210
    ##  9      184  5150
    ## 10      185    15
    ## # ... with 203 more rows

``` r
no_cancelados %>% 
  dplyr::group_by(distance) %>%
  dplyr::summarise(length(distance))
```

    ## # A tibble: 213 x 2
    ##    distance `length(distance)`
    ##       <dbl>              <int>
    ##  1       80                 48
    ##  2       94                895
    ##  3       96                598
    ##  4      116                412
    ##  5      143                418
    ##  6      160                358
    ##  7      169                524
    ##  8      173                210
    ##  9      184               5150
    ## 10      185                 15
    ## # ... with 203 more rows

``` r
no_cancelados %>% count(tailnum, wt = distance)
```

    ## # A tibble: 4,037 x 2
    ##    tailnum      n
    ##    <chr>    <dbl>
    ##  1 D942DN    3418
    ##  2 N0EGMQ  239143
    ##  3 N10156  109664
    ##  4 N102UW   25722
    ##  5 N103US   24619
    ##  6 N104UW   24616
    ##  7 N10575  139903
    ##  8 N105UW   23618
    ##  9 N107US   21677
    ## 10 N108UW   32070
    ## # ... with 4,027 more rows

``` r
no_cancelados %>% 
  dplyr::group_by(tailnum) %>%
  dplyr::summarise(sum(distance))
```

    ## # A tibble: 4,037 x 2
    ##    tailnum `sum(distance)`
    ##    <chr>             <dbl>
    ##  1 D942DN             3418
    ##  2 N0EGMQ           239143
    ##  3 N10156           109664
    ##  4 N102UW            25722
    ##  5 N103US            24619
    ##  6 N104UW            24616
    ##  7 N10575           139903
    ##  8 N105UW            23618
    ##  9 N107US            21677
    ## 10 N108UW            32070
    ## # ... with 4,027 more rows

**3.Nuestra definición de vuelos cancelados (is.na(atraso_salida) \|
is.na (atraso_llegada)) es un poco subóptima. ¿Por qué? ¿Cuál es la
columna más importante?**

``` r
##Es innecesario depender del segundo, ya que con solo usar el “is.na(atraso_salida)” la funcion se mantendra, ya que si los vuelos no salieron, es imposible que estos tuvieran una llegada.
```

**4.Mira la cantidad de vuelos cancelados por día. ¿Hay un patrón? ¿La
proporción de vuelos cancelados está relacionada con el retraso
promedio?**

``` r
por_dia <- group_by(flights, year, month, day)
 
por_dia %>% 
  summarise_all(funs(sum(is.na(.))))
```

    ## # A tibble: 365 x 19
    ## # Groups:   year, month [12]
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <int>    <int>          <int>
    ##  1  2013     1     1        4              0         4        5              0
    ##  2  2013     1     2        8              0         8       10              0
    ##  3  2013     1     3       10              0        10       10              0
    ##  4  2013     1     4        6              0         6        6              0
    ##  5  2013     1     5        3              0         3        3              0
    ##  6  2013     1     6        1              0         1        1              0
    ##  7  2013     1     7        3              0         3        3              0
    ##  8  2013     1     8        4              0         4        4              0
    ##  9  2013     1     9        5              0         5        7              0
    ## 10  2013     1    10        3              0         3        3              0
    ## # ... with 355 more rows, and 11 more variables: arr_delay <int>,
    ## #   carrier <int>, flight <int>, tailnum <int>, origin <int>, dest <int>,
    ## #   air_time <int>, distance <int>, hour <int>, minute <int>, time_hour <int>

``` r
##No existe ningun tipo de patron de vuelos cancelados, hay dias donde pueden existir 3 a 4 vuelos cancelados y al dia siguiente pasar a mas de 100
```

**5.¿Qué compañía tiene los peores retrasos? Desafío: ¿puedes desenredar
el efecto de malos aeropuertos vs. el efecto de malas aerolíneas? ¿Por
qué o por qué no? (Sugerencia: piensa en vuelos %>% group_by(aerolinea,
destino) %>% summarise(n()))**

``` r
arrange(flights, arr_delay) %>%
 group_by(arr_delay, carrier, dest) %>%
 summarise()
```

    ## `summarise()` has grouped output by 'arr_delay', 'carrier'. You can override using the `.groups` argument.

    ## # A tibble: 39,730 x 3
    ## # Groups:   arr_delay, carrier [4,683]
    ##    arr_delay carrier dest 
    ##        <dbl> <chr>   <chr>
    ##  1       -86 VX      SFO  
    ##  2       -79 VX      SFO  
    ##  3       -75 AA      SEA  
    ##  4       -75 UA      LAX  
    ##  5       -74 AS      SEA  
    ##  6       -73 UA      SFO  
    ##  7       -71 B6      LAX  
    ##  8       -71 DL      PDX  
    ##  9       -71 UA      SFO  
    ## 10       -70 B6      LGB  
    ## # ... with 39,720 more rows

``` r
#VX es la que tiene los peores retrasos
```

**6.¿Qué hace el argumento sort a count(). ¿Cuándo podrías usarlo?**

``` r
flights %>%
  count(day, sort=TRUE)
```

    ## # A tibble: 31 x 2
    ##      day     n
    ##    <int> <int>
    ##  1    18 11399
    ##  2    11 11359
    ##  3    22 11345
    ##  4    15 11317
    ##  5     8 11271
    ##  6    10 11227
    ##  7    17 11222
    ##  8     3 11211
    ##  9    21 11141
    ## 10    20 11111
    ## # ... with 21 more rows

``` r
##El argumento sort en count sirve para mostrar de forma descendente la cantidad de datos con el valor de cada variable.
```

**Parte 6: Dplyr - transformaciones agrupadas**

**1.Remítete a las listas de funciones útiles de mutación y filtrado.
Describe cómo cambia cada operación cuando las combinas con la
agrupación**

``` r
## filter() selecciona datos basándose en los valores.
## mutate() crea nuevas variables respecto a los datos filtrados.
```

**2.¿Qué avión (codigo_cola) tiene el peor registro de tiempo?**

``` r
no_cancelados=flights %>% 
  filter(!is.na(dep_delay),!is.na(arr_delay))
 
sol7.2=no_cancelados %>%
  count(tailnum,wt=air_time)
arrange(sol7.2,n)
```

    ## # A tibble: 4,037 x 2
    ##    tailnum     n
    ##    <chr>   <dbl>
    ##  1 N505SW     43
    ##  2 N746SK     50
    ##  3 N824AS     53
    ##  4 N881AS     57
    ##  5 N766SK     60
    ##  6 N701SK     64
    ##  7 N760SK     64
    ##  8 N795SK     66
    ##  9 N726SK     67
    ## 10 N772SK     67
    ## # ... with 4,027 more rows

**3.¿A qué hora del día deberías volar si quieres evitar lo más posible
los retrasos?**

``` r
no_cancelados <- flights %>% 
  filter(!is.na(dep_delay),!is.na(arr_delay))
 
sin_retraso=no_cancelados%>%
  filter((arr_delay<0) & (dep_delay<0))%>%
  select(hour,minute,dep_delay,arr_delay)

arrange(sin_retraso,hour,minute)
```

    ## # A tibble: 144,346 x 4
    ##     hour minute dep_delay arr_delay
    ##    <dbl>  <dbl>     <dbl>     <dbl>
    ##  1     5      0        -4       -19
    ##  2     5      0        -2       -10
    ##  3     5      0        -6       -11
    ##  4     5      0        -6       -23
    ##  5     5      0        -3        -1
    ##  6     5      0       -10       -14
    ##  7     5      0        -7        -5
    ##  8     5      0        -7        -8
    ##  9     5      0        -7        -3
    ## 10     5      0        -7       -12
    ## # ... with 144,336 more rows

**4.Para cada destino, calcula los minutos totales de demora. Para cada
vuelo, calcula la proporción de la demora total para su destino.**

``` r
demora <- group_by(flights, dest)
summarise(demora, min_demora = sum(arr_delay, na.rm = TRUE))
```

    ## # A tibble: 105 x 2
    ##    dest  min_demora
    ##    <chr>      <dbl>
    ##  1 ABQ         1113
    ##  2 ACK         1281
    ##  3 ALB         6018
    ##  4 ANC          -20
    ##  5 ATL       190260
    ##  6 AUS        14514
    ##  7 AVL         2089
    ##  8 BDL         2904
    ##  9 BGR         2874
    ## 10 BHM         4540
    ## # ... with 95 more rows

``` r
proporcion <- group_by(flights, dest)
summarise(proporcion, min_demora = mean(arr_delay, na.rm = TRUE))
```

    ## # A tibble: 105 x 2
    ##    dest  min_demora
    ##    <chr>      <dbl>
    ##  1 ABQ         4.38
    ##  2 ACK         4.85
    ##  3 ALB        14.4 
    ##  4 ANC        -2.5 
    ##  5 ATL        11.3 
    ##  6 AUS         6.02
    ##  7 AVL         8.00
    ##  8 BDL         7.05
    ##  9 BGR         8.03
    ## 10 BHM        16.9 
    ## # ... with 95 more rows

**6.Mira cada destino. ¿Puedes encontrar vuelos sospechosamente rápidos?
(es decir, vuelos que representan un posible error de entrada de datos).
Calcula el tiempo en el aire de un vuelo relativo al vuelo más corto a
ese destino. ¿Cuáles vuelos se retrasaron más en el aire?**

``` r
Vuelos_rapidos = flights %>%
  filter(air_time < 45) %>%
  arrange(desc(air_time)) %>% 
  head(10)
 
Vuelos_rapidos
```

    ## # A tibble: 10 x 19
    ##     year month   day dep_time sched_dep_time dep_delay arr_time sched_arr_time
    ##    <int> <int> <int>    <int>          <int>     <dbl>    <int>          <int>
    ##  1  2013     1     1      559            559         0      702            706
    ##  2  2013     1     1     2240           2245        -5     2340           2356
    ##  3  2013     1     1     2312           2000       192       21           2110
    ##  4  2013     1     1     2323           2200        83       22           2313
    ##  5  2013     1     2     1504           1443        21     1607           1553
    ##  6  2013     1     2     1821           1714        67     1945           1824
    ##  7  2013     1     3     2033           2035        -2     2133           2154
    ##  8  2013     1     4      106           2245       141      201           2356
    ##  9  2013     1     4      648            645         3      801            757
    ## 10  2013     1     4      657            700        -3      812            809
    ## # ... with 11 more variables: arr_delay <dbl>, carrier <chr>, flight <int>,
    ## #   tailnum <chr>, origin <chr>, dest <chr>, air_time <dbl>, distance <dbl>,
    ## #   hour <dbl>, minute <dbl>, time_hour <dttm>

**7.Encuentra todos los destinos que son volados por al menos dos
operadores. Usa esta información para clasificar a las aerolíneas**

``` r
salio<-flights %>%
  select(carrier, dest) %>%
  count(dest, carrier) %>%
  group_by(dest) %>%
  filter(rank(desc(carrier)) > 2)
unique(salio$dest)
```

    ##  [1] "ATL" "AUS" "BNA" "BOS" "BTV" "BUF" "BWI" "CHS" "CLE" "CLT" "CMH" "CVG"
    ## [13] "DCA" "DEN" "DFW" "DTW" "FLL" "IAD" "IND" "JAX" "LAS" "LAX" "MCI" "MCO"
    ## [25] "MEM" "MIA" "MKE" "MSP" "MSY" "OMA" "ORD" "ORF" "PBI" "PDX" "PHL" "PHX"
    ## [37] "PIT" "PWM" "RDU" "ROC" "RSW" "SAN" "SAT" "SDF" "SEA" "SFO" "SJU" "SRQ"
    ## [49] "STL" "STT" "SYR" "TPA"

**8.Para cada avión, cuenta el número de vuelos antes del primer retraso
de más de 1 hora**

``` r
flights%>%
  select(dep_delay, tailnum) %>%
  count(tailnum, dep_delay) %>%
  group_by(tailnum) %>%
  filter(dep_delay < 60) %>%
  summarise(sum(n))
```

    ## # A tibble: 4,009 x 2
    ##    tailnum `sum(n)`
    ##    <chr>      <int>
    ##  1 D942DN         3
    ##  2 N0EGMQ       331
    ##  3 N10156       129
    ##  4 N102UW        46
    ##  5 N103US        46
    ##  6 N104UW        43
    ##  7 N10575       228
    ##  8 N105UW        44
    ##  9 N107US        40
    ## 10 N108UW        58
    ## # ... with 3,999 more rows
