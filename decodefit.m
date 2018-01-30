%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function: %decodefit%
%          Decode the measures results of binary SQUENCE and
%          Calculate its FITNESS.   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[incode,fitness] = decodefit(mePop)
global popSize;
global lchrom;
fitness = zeros(1,popSize);
incode  = zeros(1,popSize);

%%Decode
for i=1:popSize
	sum = 0;
    for j=1:lchrom
    	sum = sum + mePop(i,j)*(2^(4-j));
    end
    incode(i) = sum;
end

%%Calculate fitness
for i = 1:popSize
	fitness = exp(-0.001 * incode(i))*(cos(0.8*incode(i)))^2;
end