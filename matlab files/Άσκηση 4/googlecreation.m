
function G = googlecreation(A,q) %���������� ��� ������ G
format long;
[~,n]=size(A);
for i=1:n
    for j=1:n
    G(i,j)=q/n + (A(j,i)*(1-q))/sumk(A,j,n); 
    end
end
end

function s = sumk(A,k,n) %������� �� �������� ��� ������ k
sum=0;
for i=1:n
    sum=sum+A(k,i);
end
s=sum;
end
