function polynomial = polyonymo(A,B,bathmos,s,x)

sum_x1=athroisma(A,s,1);
sum_x2=athroisma(A,s,2);
sum_x3=athroisma(A,s,3);
sum_x4=athroisma(A,s,4);
sum_x5=athroisma(A,s,5);
sum_x6=athroisma(A,s,6);
sum_x7=athroisma(A,s,7);
sum_x8=athroisma(A,s,8);
sum_y1=athroisma(B,s,1);
sum_xy=athroismaXY(A,B,s,1);
sum_x2y=athroismaXY(A,B,s,2);
sum_x3y=athroismaXY(A,B,s,3);
sum_x4y=athroismaXY(A,B,s,4);

if (bathmos==2)
   A=[s,sum_x1,sum_x2]'; 
   B=[sum_x1,sum_x2,sum_x3]';
   C=[sum_x2,sum_x3,sum_x4]';
   b=[sum_y1,sum_xy,sum_x2y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           else
               T(i,j)=C(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*x.^(i-1);
   end
   polynomial=p;
end

if(bathmos==3)
   A=[s,sum_x1,sum_x2,sum_x3]' ;
   B=[sum_x1,sum_x2,sum_x3,sum_x4]';
   C=[sum_x2,sum_x3,sum_x4,sum_x5]';
   D=[sum_x3,sum_x4,sum_x4,sum_x6]';
   b=[sum_y1,sum_xy,sum_x2y,sum_x3y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           elseif j==3
               T(i,j)=C(i);
           else
               T(i,j)=D(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*x.^(i-1);
   end
   polynomial=p;
end

if(bathmos==4)
   A=[s,sum_x1,sum_x2,sum_x3,sum_x4]'; 
   B=[sum_x1,sum_x2,sum_x3,sum_x4,sum_x5]';
   C=[sum_x2,sum_x3,sum_x4,sum_x5,sum_x6]';
   D=[sum_x3,sum_x4,sum_x4,sum_x6,sum_x7]';
   E=[sum_x4,sum_x4,sum_x6,sum_x7,sum_x8]';
   b=[sum_y1,sum_xy,sum_x2y,sum_x3y,sum_x4y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           elseif j==3 
               T(i,j)=C(i);
           elseif j==4
               T(i,j)=D(i);
           else 
               T(i,j)=E(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*x.^(i-1);
   end
   polynomial=p;
end
end