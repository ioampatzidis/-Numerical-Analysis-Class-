function b=dixotomisi(func,min,max)
b=0;
loop=0;
if func(min)*func(max)>0 
    disp('Wrong ')
else
    b=(min+max)/2;
    error=abs(func(b));
    
    while (error>10^(-6)/2)
         if func(min)*func(b)<0
             max=b;
         else
             min=b;
         end
          b=(min+max)/2;
          error=abs(func(b));
          loop=loop+1;
    end
          str=['loops:',num2str(loop)];
          disp(str);
       end

