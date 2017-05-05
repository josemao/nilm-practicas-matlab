% Ejercicio 1: 
% Data Analysis and Visualization. 

% Limpiar historial: 
clear all, clc, close all; 

% 1. Elegir una casa del dataset ECO y visualizar el consumo total de 
% potencia en un d�a. 

% Cargar en memoria el Smart Meter: 
load(     );

% Visualizaci�n: 
plot(     );


% 2. Obtener los consumos de los electrodom�sticos (Smart Plugs)
%para ese mismo d�a y casa y superponerlos en la gr�fica anterior. 
%Incluir una leyenda con los nombres de cada dispositivo (incluido 
%el Smart Meter). Nota: Las etiquetas de cada dispositivo vienen 
%referenciadas en el archivo de texto "0X_doc.txt". �Qu� nos puedes 
%decir sobre el consumo de ese d�a? �Cu�l es el dispositivo que m�s 
%consumo a simple vista? �Cu�l es el m�s usado?


% Cargar en memorial los Smart Plugs: 
load(     );
load(     );
load(     );
load(     );
load(     );
% Continue with all devices...

%Crear las gr�ficas: 
hold();
plot(     );
plot(     );
plot(     );
plot(     );
plot(     );
% Continue with all devices...

legend(     );

% 3. Obt�n el consumo total de todas las casas y repres�ntalo en un 
% histograma (eje-y: consumo, eje-x: numero de casa). �Cu�l es la casa 
% que m�s consume? 

houses=['01';'02';'03';'04';'05';'06'];
powerHouses=[];
for i=1:length(houses)
    powerHouses=[powerHouses getTotals(houses(i,:))];  
end

%Dibujando Bar: 
bar(     ); 
title('Comparaci�n de potencias entre casas');
xlabel('Casa');
ylabel('Consumption (MWh)');

% 4. Para la casa que m�s consume, �cu�l es el dispositivo que 
% m�s consume? Modifica el script anterior para obtener los consumos 
% totales de los dispositivos en esa casa. 

house=   
appls=
powerAppls=[];
for j=1:length(appls)
    powerAppls=[powerAppls getTotalsAppls(house,appls(j,:))];  
end

%Dibujando Bar: 
bar(        ); 
title('Comparaci�n de dispositivos');
xlabel('Dispositivo');
ylabel('Consumption (MWh)');
set(gca,'XTickLabel',{'Fridge','Kitchen appliances', 'Lamp',...
    'Stereo & laptop', 'Freezer', 'Tablet', 'Entertainment',...
    'Microwave'},'XTickLabelRotation',45);

