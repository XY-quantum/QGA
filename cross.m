%%%%%%%%%%%%%%%%%%%%%%%%
% Function: %_cross_%
%%%%%%%%%%%%%%%%%%%%%%%%

function [newPop] = cross(oldPop)
global popSize;
global lchrom;
newPop = zeros(popSize,lchrom,2);

for i=1:popSize
   for j=1:popSize
   	 if j-i+1 >0
   	 	idx = j-i+1;
   	 else
   	 	idx = j-i+1+popSize;
   	 end
   	 for k=1:2
   	 	newPop(j,i,k) = oldPop(idx,i,k);
   	 end
   	end
end

for i= popSize+1:lchrom
   for j=1:popSize
   	 if j-i+1+popSize >0
   	 	idx = j-i+1+popSize;
   	 else
   	 	idx = j-i+1+2*popSize;
   	 end
   	 for k=1:2
   	 	newPop(j,i,k) = oldPop(idx,i,k);
   	 end
   	end
end 