# Prácticas NILM en Matlab (Mayo 2017)

Las prácticas se dividirán en dos ejercicios. Primeramente utilizaremos la base de datos ECO dataset para realizar una serie de visualizaciones. A continuación se implementará un detector de eventos. 


## 1 - Ejercicio 1: Data Analysis and Visualization

Hay que descargar los archivos en: 
http://www.vs.inf.ethz.ch/res/show.html?what=eco-data

La estructura de la base de datos es la siguiente: 

Para la casa NN, los datos de lectura del contador inteligente se encuentra en el siguiente path, donde cada archivo '.mat' se corresponde a un día 
'eco/smartmeter/NN/*.mat'

Para la casa NN y el dispositivo MM, los datos de lectura se encuentra en el siguiente path, donde cada archivo '.mat' se corresponde a un día 
'eco/NN/plugs/MM/*.mat'

La frequencia de adquisicion de la base de datos es de 1Hz. 

## 2 - Deteccion de eventos NILM

Implementaremos un detector de eventos muy sencillo. Este es el paso previo a la desagregación en algoritmos NILM basados en eventos. Posteriormente, un clasificador nos dará la etiqueta (e.g. Microondas) de dicho evento. 

Para ello utilizamos los datos de la carpeta 'data'. 
    + 'VI.mat' es la variable de matlab que contiene el voltage y la corriente en vectores columnas. Con un sampleado de 12kHz. 
    + 'events.mat' es una etiqueta temporal indicando donde se producen lo eventos y a que ID de dispositivo se corresponde. 
    + 'labels.mat' se hace el mapeado de ID de dispositivo a etiqueta. 
