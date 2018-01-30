%%%%%%%%%%%%%%%%%%%%%%%
%% Function:generation
%%%%%%%%%%%%%%%%%%%%%%%
function [newPop] = generation(oldPop,objVal,indivi)
global popSize;
global lchrom;

ang = angle(oldPop,objVal,indivi);
for i=1: popSize
  for j=1:lchrom
  	H(:,:)=oldPop(i,j,:);
    a = ang(i,j);
    newPop(i,j,:) = [cos(a),-sin(a),cos(a)]*H;
  end
end
