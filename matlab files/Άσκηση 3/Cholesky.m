
function L = Cholesky( C )
for j=i:m,
    for i= 1:j
        sigma= M(i,j);
        for k=1:j-1;
            sigma =sigma -C(i,k)*C(j,k);
        end
        if i==j
            C(i,j)= sqrt(sigma);
        else
            C(i,j)= sigma/C(j,j)
        end
    end 
end 