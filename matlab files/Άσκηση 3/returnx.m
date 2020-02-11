
function x=returnx( L,U,P,b)
y=size(L,1);
[m,n]=size(L)
for i=1:m
    sum=0;
    for j=1:n
        sum=sum+p(i,j)*b(j);
    end
    for j=1:i-1
        sum=sum-y(j)*L(i,j);
    end
    sum=sum-y(i)*L(i,j);
end
sum=sum/L(i,i);
y(i)=sum;

for i=1:m
    sum=0;
    for j=1:n
        sum=sum+y(j);
    end
    for j=1:i-1
        sum=sum-x(j)*U(i,j);
    end
    sum-sum/U(i,i);
    x(i)=sum;
end
end

