
format long;

syms x;

A = [-pi,pi,-pi/9,-pi/6,-pi/2.5,pi/2.5,pi/4.8,pi/6,-pi/4.8,-pi/9]';
B = sin(A);

n=size(A);
P=0;

%Χρησιμοποιούμε τα 2 for loop για να κατασκευάσουμε το πολυώνυμο Lagrange
%που διέρχεται από τα σημεία (x,y) = (A(j),B(j)).

for j=1:n  
    Li=1;
    for i=1:n
       if i== j %Χρησιμοποιούμε αυτή τη συνθήκη έτσι ώστε να μην μηδενίζεται ποτέ
                %ο παρονομαστής
           continue;
       end
       Li=Li*(x-A(i))/(A(j)-A(i));
    end
    P=P+Li*B(j);   
end

clc

simplify(P)