
function X = GaussSeidel(n)
    A=eye(n);
    for i=1:n
        for j=1:n
            if i==j
                A(i,j)=5;
            end
            if j==i+1
                A(i,j)=-2;
            end
            if i==j+1
                A(i,j)=-2; 
            end
        end
    end
    b=ones(n,1);
    for i=1:n
        if i==1
            b(i)=3;
        elseif i==n
            b(i)=3;
        else
            b(i)=1;
        end
    end
    X = zeros(n,1);
    Error = ones(n,1);
    while max(Error)>0.5*10^(-4)
        Z = X;
        for i=1:n
            j = 1:n;
            j(i) = [];
            Xtemp = X;  
            Xtemp(i) = [];
            X(i)=(b(i)-sum(A(i,j)*Xtemp))/A(i,i);
        end
        Error= sqrt((X - Z).^2);
    end
    
end