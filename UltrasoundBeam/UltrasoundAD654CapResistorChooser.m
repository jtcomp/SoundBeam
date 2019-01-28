% R1 , R2, Ct
% Vin 0.1 -> 30Khz
% Vin 2.5 -> 40Khz
% Vin 5 -> 50Khz


Ct = 0.1e-9;
Fout = [40e3 , 50e3];
Vin = [2.5, 5] ; 

CoefMat = [Fout(1)*10*Ct , Fout(1)*10*Ct ; Fout(2)*10*Ct , Fout(2)*10*Ct ];
SolnMat = [Vin(1) ; Vin(2)];

soln = inv(CoefMat)*SolnMat;
