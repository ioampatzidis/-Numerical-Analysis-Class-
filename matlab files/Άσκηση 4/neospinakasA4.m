

A4=[0,1,0,0,0,0,0,0,1,0,0,0,0,0;
   0,0,1,0,1,0,1,0,0,0,0,0,0,0;
   0,1,0,0,0,1,0,1,0,0,0,0,0,0;
   0,0,1,0,0,0,0,0,0,0,1,0,0,0;
   1,0,0,0,0,0,0,0,0,0,0,0,0,0;
   0,0,0,0,0,0,0,0,0,1,0,0,0,0;
   0,0,0,0,0,0,0,0,0,1,0,0,0,0;
   0,0,0,1,0,0,0,0,0,1,0,0,0,0;
   0,0,0,0,1,1,0,0,0,0,0,0,0,0;  
   0,0,0,0,0,0,0,0,0,0,0,0,0,1;
   0,0,0,0,0,0,1,1,0,1,0,0,0,0;
   0,0,0,0,0,0,0,0,1,0,0,0,1,0;
   0,0,0,0,0,0,0,0,0,1,0,1,0,1;
   0,0,0,0,0,0,0,0,0,0,1,0,1,0];


G4=googlecreation(A4,.15);
imi4=methdynamis(G4);
imi4_k=kanonikopoiisi(imi4);