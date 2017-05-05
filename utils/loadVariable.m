function variable=loadVariable(path)
    % load variable: 
    load(path);
    
    %Changing variable name to a generic one: 
    b=whos(matfile(path));
    name=b.name;
    eval(['variable=' name ';']);
end