% Ejercicio 2: 
% Event-based NILM algorithm.

% Limpiar historial: 
clear all, clc, close all; 

% 1. Cargar datos en memoria: 
 



% 2. Visualizar voltaje, corriente y eventos en la misma gr�fica:
fig=figure(1);
plot(       ,'b:');
hold();
plot(        ,'r');
plot(             ,'rv', 'MarkerFaceColor','g');
legend(              );

% 3. Implementar la funci�n "movingRMS" que devuelva el vector de 
% valores eficaces. 
W=    ; %50ms en numero de muestras

% Pasar como argumento la corriente
rms=movingRMS(     ,W);

% 4. Derivar vector de medias. 
drms=        ;

% 5. Uso de la funci�n "findpeaks" para encontrar los picos de la se�al, 
% donde se encuentra los eventos. 
distance=150;
th=5;
[~,locs]=findpeaks(             );


% 6. Visualizaci�n de los eventos: 
fig=figure();
ax1=subplot(2,1,1);
plot(       );
hold();
plot(              ,'rv', 'MarkerFaceColor','r');
ax2=subplot(2,1,2);
hold();
plot(    );
plot(    );
plot(          ,'rv','MarkerFaceColor','r');



% Para finalizar, hacer el c�lculo de las m�tricas en papel. 
