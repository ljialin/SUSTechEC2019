function [funcName,config,budget] = getFuncConfig(funcIdx)
% REFERENCE: 
% Yao, Xin, Yong Liu, and Guangming Lin. "Evolutionary programming made 
% faster." IEEE Transactions on Evolutionary computation 3.2 (1999): 82-102.
%
% Author: Jialin Liu
% email: jialin.liu.cn@gmail.com
% Website: http://www.liujialin.tech/
% Feb 2019; Last revision: 20-Feb-2019
%
% Benchmark function names
% (fucntion indices in the reference: 6, 7, 9, 10, 18, 21)
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
% Budget (evaluations) for different benchmark functions
evaluations=[15000, 30000, 50000, 15000, 1000, 1000];
moreevaluations=[150000, 300000, 500000, 150000, 10000, 10000];

funcName=benchmarkNames{funcIdx};
config=funcConfig(funcIdx,:);
budget=evaluations(funcIdx);

end
