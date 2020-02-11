
function max = methdynamis(G) 
format long;               
[m,n]=size(G);
d=G(1:m,n);
for i=1:20
    d=G*d;
    l=1/d(1);
    d=l*d;
end
d=(1/l)*d;
max=d; %ιδιοδιάνυσμα μέγιστης ιδιοτιμής του πίνακα
end

