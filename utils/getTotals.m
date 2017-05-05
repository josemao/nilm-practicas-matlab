function power=getTotals(house)

% Definir el path: 
datapath=['data/eco/smartmeter/' house '/'];

% Listar el numero de archivos (días) en el path: 
listing=dir([datapath '*.mat']);

% Inicializamos la cuenta de la potencia:
power=

for i=1:length(listing)
    
    %Path al día: 
    dayPath=[datapath listing(i).name];  
    % Función para cargar la variable con nombre genérico: 
    sm=loadVariable(dayPath);
     % Eliminar fallos (-1) e igualarlo a 0
    sm.powerallphases(sm.powerallphases==-1)=0;
    
    %Suma de potencia: 
    power=
    
    
    % Para el seguimiento de la ejecución:
    disp(['House: ' house '. Number of days: ' num2str(i) '/' ...
        num2str(length(listing))]);
end

end