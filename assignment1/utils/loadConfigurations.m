% Configurations
%
% Author: Jialin Liu
% email: jialin.liu.cn@gmail.com
% Website: http://www.liujialin.tech/
% Feb 2019; Last revision: 20-Feb-2019
%
% Number of repetitions
numRuns=50;
% Number of benchmark functions
numFunc=6;
% Benchmark function names
% (fucntion indices in the reference: 7, 8, 10, 11, 18, 21)
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
evaluations=[150000, 300000, 500000, 150000, 10000, 10000];



