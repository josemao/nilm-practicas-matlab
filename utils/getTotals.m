function power=getTotals(house)

% Definir el path: 
datapath=['data/eco/smartmeter/' house '/'];

% Listar el numero de archivos (d�as) en el path: 
listing=dir([datapath '*.mat']);

% Inicializamos la cuenta de la potencia:
power=

for i=1:length(listing)
    
    %Path al d�a: 
    dayPath=[datapath listing(i).name];  
    % Funci�n para cargar la variable con nombre gen�rico: 
    sm=loadVariable(dayPath);
     % Eliminar fallos (-1) e igualarlo a 0
    sm.powerallphases(sm.powerallphases==-1)=0;
    
    %Suma de potencia: 
    power=
    
    
    % Para el seguimiento de la ejecuci�n:
    disp(['House: ' house '. Number of days: ' num2str(i) '/' ...
        num2str(length(listing))]);
end

end