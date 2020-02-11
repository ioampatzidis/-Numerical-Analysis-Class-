function x= newton_rapson( f,x0,x1)
f1diff=diff(f);
f2diff=diff(f1diff);
if f(x0)*f(x1) > 0
     disp('Wrong');
 else
     loop=0;
     x=x0;
     err=Inf;
     
     if f(x1)*f2(x1)>0
         x=x1;
     end
     while abs(err)>10^(-6)/2
         xold=x;
         x=xold-f(xold)./f1(xxold);
         err=x-xold;
         loop=loop+1;
     end
     str=['Number of loops:',num2str(loop)];
     disp(str);
 end
end

