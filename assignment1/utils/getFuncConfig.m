function [funcName,config,budget] = getFuncConfig(funcIdx)
%
% Author: Jialin Liu
% email: jialin.liu.cn@gmail.com
% Website: http://www.liujialin.tech/
% Feb 2019; Last revision: 20-Feb-2019
%
% benchmark function names
benchmarkNames={'step','noisyQuartic','rastrigin','ackley', ...
    'goldsteinPrice','shekel'};
% Each row refers to the configuration of a fitness function
% dimension, lower bound of x, upper bound of x
funcConfig=[...
    30, -100, 100; ...
    30, -1.28, 1.28;...
    30, -5.12, 5.12;...
    30, -32, 32;...
    2, -2, 2;...
    4, 0, 10];
% Budegt for different benchmark functions
generations=[1400, 2000, 5000, 5000, 20000, 1400, 3000];

funcName=benchmarkNames{funcIdx};
config=funcConfig(funcIdx,:)
budget=generations(funcIdx);

end