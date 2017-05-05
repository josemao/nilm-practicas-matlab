% Ejercicio 1: 
% Data Analysis and Visualization. 

% Limpiar historial: 
clear all, clc, close all; 

% 1. Elegir una casa del dataset ECO y visualizar el consumo total de 
% potencia en un día. 

% Cargar en memoria el Smart Meter: 
load(     );

% Visualización: 
plot(     );


% 2. Obtener los consumos de los electrodomésticos (Smart Plugs)
%para ese mismo día y casa y superponerlos en la gráfica anterior. 
%Incluir una leyenda con los nombres de cada dispositivo (incluido 
%el Smart Meter). Nota: Las etiquetas de cada dispositivo vienen 
%referenciadas en el archivo de texto "0X_doc.txt". ¿Qué nos puedes 
%decir sobre el consumo de ese día? ¿Cuál es el dispositivo que más 
%consumo a simple vista? ¿Cuál es el más usado?


% Cargar en memorial los Smart Plugs: 
load(     );
load(     );
load(     );
load(     );
load(     );
% Continue with all devices...

%Crear las gráficas: 
hold();
plot(     );
plot(     );
plot(     );
plot(     );
plot(     );
% Continue with all devices...

legend(     );

% 3. Obtén el consumo total de todas las casas y represéntalo en un 
% histograma (eje-y: consumo, eje-x: numero de casa). ¿Cuál es la casa 
% que más consume? 

houses=['01';'02';'03';'04';'05';'06'];
powerHouses=[];
for i=1:length(houses)
    powerHouses=[powerHouses getTotals(houses(i,:))];  
end

%Dibujando Bar: 
bar(     ); 
title('Comparación de potencias entre casas');
xlabel('Casa');
ylabel('Consumption (MWh)');

% 4. Para la casa que más consume, ¿cuál es el dispositivo que 
% más consume? Modifica el script anterior para obtener los consumos 
% totales de los dispositivos en esa casa. 

house=   
appls=
powerAppls=[];
for j=1:length(appls)
    powerAppls=[powerAppls getTotalsAppls(house,appls(j,:))];  
end

%Dibujando Bar: 
bar(        ); 
title('Comparación de dispositivos');
xlabel('Dispositivo');
ylabel('Consumption (MWh)');
set(gca,'XTickLabel',{'Fridge','Kitchen appliances', 'Lamp',...
    'Stereo & laptop', 'Freezer', 'Tablet', 'Entertainment',...
    'Microwave'},'XTickLabelRotation',45);

