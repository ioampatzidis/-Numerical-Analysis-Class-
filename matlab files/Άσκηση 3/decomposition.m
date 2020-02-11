
function [L,U,P]=decomposition(A)
[n|n1]=size(A);
L=eye(n);
P=eye(n);
U=A;

for j=1:n
    [pivot m]=max(abs(U(j:n, j)));
    m=m+j-1;
    if m~=j
        U([m,j], :)= U([j,m], :);
        P([m,j], :)= P([j,m], :);
         if j>=2;
             L([m,j],1:j-1)=L([j,m], 1:j-1);
         end;
    end
    for i=j+1:n
        L(i,j)= U(i,j)/U(j,j);
        U(i,:)=U(i,:)-L(i,j)*U(j,:);
    end
end