%γενέθλια 09/08 οπότε έκανα χρήση των τελευταίω 10 τιμών κλεισίματος

format short; 

deigmata= 10 ;

meres = 11 ;

for i=1:10
    F(i) = i ;
end
%EYDAP    
metoxesA = [6.30,6.33,6.24,6.19,6.27,6.36,6.31,6.33,6.30,6.25];
         
polmAvathmou2 = polyonymo(F,metoxesA,2,deigmata,meres);
polmAvathmou3 = polyonymo(F,metoxesA,3,deigmata,meres);
polmAvathmou4 = polyonymo(F,metoxesA,4,deigmata,meres);
         
%VIOHALCO(BIO)
metoxesB = [2.93,2.88,2.88,2.79,2.86,2.87,2.84,2.92,2.90,2.92];
         
polmBvathmou2 = polyonymo(F,metoxesB,2,deigmata,meres);
polmBvathmou3 = polyonymo(F,metoxesB,3,deigmata,meres);
polmBvathmou4 = polyonymo(F,metoxesB,4,deigmata,meres);

