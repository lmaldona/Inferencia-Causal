---
title: 'Ejemplo análisis de sensibilidad'
author: ""
date: ""
output: 
  html_document:
    keep_tex: yes
    latex_engine: xelatex
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

<style>

table, td, th {
  border: none;
  padding-left: 1em;
  padding-right: 1em;
  min-width: 50%;
  margin-left: auto;
  margin-right: auto;
  margin-top: 1em;
  margin-bottom: 1em;
}

</style>

El análisis de sensibilidad puede resultar contra-intuitivo. La razón es que estamos hablando de algo (variable omitida) que no observamos. Para ilustrar como funciona este tipo de análisis, veamos el siguiente ejemplo, el cual trabaja con una base de datos con 10 parejas de tratados y controles. Las variables son: id=identificador persona, y1=binary outcome, d1=tratamiento (1 es tratado, 0 es control), y block1=pareja.

```{r}
rm(list = ls())

library(foreign)
```
Fíjese cual es su directorio

```{r}
setwd('/Users/luismaldonado/Dropbox/Sol3026_3063/2016/Clases/Clase 13/Guia Sensibilidad')

dat <- read.dta("Sensitivity1.dta",convert.factors = F)
dat
```

1. En el caso de outcomes binarios, vimos en clases los Rosenbaum Bounds. Estos se basan en el McNemar T test. Para detalles de este test, vea el cap. 4 del libro de Rosenbaum (2002): Observational Studies. He dejado una copia de este capítulo en la web del curso.

2. Tal como vimos en la tabla, lo central, luego de aplicar matching y formar parejas, es completar la siguiente tabla, particulármente las celdas que corresponden a las parejas discordantes.



