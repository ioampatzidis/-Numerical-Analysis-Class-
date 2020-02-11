
function k = kanonikopoiisi(max) 
format long;          
m=length(max);
sum=0;
for i=1:m
   sum=sum+max(i); 
end
k=(1/sum)*max;
end


