function TropopoihshDixotomisi( a,b )
%D Summary of this function goes here

f=@(x)(54*x.^6)+(45*x.^5)-(102*x.^4)-(69*x.^3)+(35*x.^2)+16*x-4;
x0=a;
x1=b;
tol=10^(-6);
 if f(x0)*f(x1)>0
     disp('ERROR');
 else
     loop=0;
     p=(x0+x1)/2;
     err=abs(f(p));
     
     while err>tol
         if f(x0)*f(p)<0
             x1=p;
         else
             x0=p;
         end
         
         p=x0+ (x1-x0) *rand(); %Random point
         err=abs(f(p));
         loop=loop+1;
         
     end
     str= ['Num of loops:' ,num2str(loop)];
     disp(str);
     disp(p);
   end
         