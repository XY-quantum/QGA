%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function: %_measure_%
%           Measure the COLLAPSE MEASUREMENT OF POPULATION to
%           produce the binary series.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [measurePop] = measure(pop)
global popSize;
global lchrom;
measurePop = zeros(popSize,lchrom);

for i=1:popSize
	for j=1:lchrom
		num = rand(0,1);
	    if num > pop(i,j,1)^2
	    	measurePop(i,j) = 1;
	    else
	    	measurePop(i,j) = 0;
	    end
	end
end
