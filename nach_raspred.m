function [f] = nach_raspred(z)
for i=1:11
if 0<=z(i) && z(i)<1/4 
   f(i)=0; 
elseif 1/4<=z(i) && z(i)<1/2
   f(i)=4*(1/2-z(i));
elseif 1/2<=z(i) && z(i)<3/4
   f(i)=4*(z(i)-1/2);
else f(i)=0;
end

end