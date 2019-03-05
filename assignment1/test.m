% test file
% Used for testing your optimiser
%
% Author: Jialin Liu
% email: jialin.liu.cn@gmail.com
% Website: http://www.liujialin.tech/
% Feb 2019; Last revision: 19-Feb-2019

%% There is not need to edit this file, unless you want to provide/test 
%% different optimisers.
addpath('./benchmark/');
addpath('./utils/');

% Number of repetitions
numRuns=50;
% Number of benchmark functions
numFunc=6;
%loadConfigurations;
for funcIdx=1:numFunc
    [funcName,config,budget]=getFuncConfig(funcIdx); 
    for crossoverIdx=1:3
        for mutationIdx=1:3
            for selectionIdx=1:3
                fprintf('[Optimisation of function %d, crossoverIdx=%d, mutationId=%d, selectionIdx=%d]\n',funcIdx,crossoverIdx,mutationIdx,selectionIdx);
                appry=zeros(1,numRuns);
                for run=1:numRuns
                    [apprx, appry(run)]=optimise(funcName,budget,crossoverIdx,mutationIdx,selectionIdx);
                    fprintf('RUN %d: Approximate optimal value=%.16f\n', run, appry(run));
                    fprintf('RUN %d: Approximate optimum=%s\n', run, mat2str(apprx));
                end
                fprintf('FINAL: Averaged approximate optimal value=%.16f(%.16f)\n\n', ...
                    mean(appry), std(appry)/sqrt(numRuns));
            end
        end
    end
end
