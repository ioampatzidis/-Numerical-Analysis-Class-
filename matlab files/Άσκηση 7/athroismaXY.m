
function sum2=athroismaXY(x,y,n,z)
sum=0;
for i=1:n
    sum=sum+x(i).^z*y(i);
end
sum2=sum;
end