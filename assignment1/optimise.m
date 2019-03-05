function [apprx,appry]=optimise(funcName,budget,crossoverIdx,mutationIdx,selectionIdx)
warning on MATLAB:divideByZero
% Input:
% crossoverIdx: the index of crossover operator \in {1, 2, 3}
% mutationIdx: the index of mutation operator \in {1, 2, 3}
% selectionIdx: the index of selection operator \in {1, 2, 3}
%
% Output:
% apprx: the approximate optimum
% appry: the approximate optimal value
%
%% TODO: below to implement your own EA
%% You may need to provide multiple files if you are asked to implement 
%% more than one algorithm or an algorithm with different configurations.
%------------- BEGIN CODE --------------

%------------- END OF CODE --------------
end

function y=fitness(funcName,x)
eval(sprintf('objective=@%s;',funcName)); % Do not delete this line
%% TODO: below to implement your own fitness function
%------------- BEGIN CODE --------------
objValue=objective(x); 
y=objValue;
%------------- END OF CODE --------------
end