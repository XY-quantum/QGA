%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Function:maxfit %%
%    To find the most adaptive individuals in the populations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [max,idx] = maxfit(fit)
global popSize;
global lchrom;
max = 0;
for i=1:popSize
	if fit(i) > max
		max = fit(i);
	    idx = i;
    end
end
