%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quantum Genetic Algorithm
% Date: 2018 Jan 30th
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
tic;
clf
clc

global popSize; % size of population
global lchrom;  % chromosome length

popSize = 10;
lchrom  = 20;

% Produced the population and set the number of it to the variable oldpop
oldPop = zeros(popSize,lchrom,2);
for i=1:popSize
   for j=1:lchrom
   	  for k=1:2
   	  	oldPop(i,j,k) = 1/sqrt(2);
      end
   end
end
%oldPop = initpop;
for i=1:60
	oldPop = cross(oldPop);
    % Cross operator
    mePop  = measure(oldPop);
    % Decoder
    [incode,fitness] = decodefit(mePop);
    % Find the max individual
    [max,idx] = maxfit(fitness);
    sprintf('%d',max);
    if (i == 1) || (max > objVal)
    	objVal = max;
        indivi = mePop(idx,:);
        %mePop + measure(pop);
        num(i) = incode(idx);
    else
        num(i) = num(i-1);
    end
    maxmum(i) = objVal;
    newPop = generation(oldPop,objVal,indivi);
    oldPop = newPop;
end

plot(maxmum,linewidth,1.5);
title('Quantum Generic Algorithm');
xlabel('Evolution Generations');
ylabel('Optimum Value');
for i = 1:5:25
   maxmum(i);
   num(i); 
end 