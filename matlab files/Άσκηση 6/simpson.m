
format long;                
syms x;
a=0;
b=pi/2;
z=10;
qq=(b-a)/(z-1);
c=0;
for i=1:z
   A(i,1)=c;                
   A(i,2)=sin(c);
   c=c+qq;
end
[m,v]=size(A);
n=m-1;
sum=A(1,2)+A(m,2);
t=fix(n/2);
for k=1:t
    sum=sum+4*A((2*k),2);
end
t=fix((n/2)-1);
for k=1:t
    sum=sum+2*A(2*k+1,2);
end
E=(b-a)/(3*n)*sum 

g(x)=sin(x);
df=diff(g,4);
y=abs(df(pi/2));
e=(((b-a)^5)/(180*(n^4)))*y; 
error=double(e)