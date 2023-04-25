%   CASE South of Russia

%   MATPOWER

clc;
clear all;

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% System MVA base
mpc.baseMVA = 100;

%% Bus data
%	bus_i	type	Pd	   Qd	  Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	1	31.2   7.3 	    0	   0	    0	1	0 	 110 	1	1.1   0.9;
	2	1	 0 	    0   	0	   0        0	1	0	 330 	1	1.1	  0.9;
	3	1	92.3	11  	0	   0        0	1	0 	 110 	1	1.1   0.9;
    4	1	25.7   15.1 	0	   0	    0	1	0 	 220 	1	1.1   0.9;
    5	1	27.4   5.6 	    0	0.003176	0	1	0 	 110 	1	1.1   0.9;
    6	1	 30	    10 	    0	   0	    0	1	0 	 110 	1	1.1   0.9;
    7	1	32.3   16.2 	0	   0	    0	1	0 	 220 	1	1.1   0.9;
    8	1	45.9   28.3 	0	   0	    0	1	0 	 110 	1	1.1   0.9;
    9	1	12.4   5.6 	    0	   0	    0	1	0 	 220 	1	1.1   0.9;    
   10 	1	 0      0   	0	   0	    0	1	0 	 330 	1	1.1   0.9;    
   11 	1	 53    4.2      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   12   1   1.05   0.28     0      0	    0	1	0 	 110 	1	1.1   0.9;
   13   1    55    5.1      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   14   1   41.7   25.7     0      0	    0	1	0 	 220 	1	1.1   0.9;    
   15   1    0      0       0      0	    0	1	0 	 330 	1	1.1   0.9;    
   16   1    0      0       0      0	    0	1	0 	 110 	1	1.1   0.9;    
   17   1  193.8   25.1     0      0	    0	1	0 	 110 	1	1.1   0.9;    
   18   1   41.1    15      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   19   1   23.1   8.3      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   20   1    0      0       0      0	    0	1	0 	 220 	1	1.1   0.9;    
   21   2   11.6   5.9      0      0	    0	1	0 	15.75 	1	 1     1;    
   22   1   17.1    5       0      0	    0	1	0 	 220 	1	1.1   0.9;    
   23   1   0.001   0       0      0	    0	1	0 	 110 	1	1.1   0.9;    
   24   1    0      0       0      0	    0	1	0 	 330 	1	1.1   0.9;    
   25   1    0      0       0      0	    0	1	0 	 220 	1	1.1   0.9;    
   26   2    0      0       0      0	    0	1	0 	 11 	1	 1     1;    
   27   1   78.2   20.9     0      0	    0	1	0 	 220 	1	1.1   0.9;    
   28   1    0      0       0      0	    0	1	0 	 330 	1	1.1   0.9;    
   29   1   12.3   2.9      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   30   1   10.3   1.3      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   31   2    0      0       0      0	    0	1	0    11 	1	 1     1;    
   32   1   21.8   8.8      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   33   1   56.8   18.5     0   0.003176	0	1	0 	 110 	1	 1     1;     
   34   1    0      0       0   0.003176    0	1	0 	 35 	1	 1     1;     
   35   1    0      0       0   0.003176    0	1	0 	 35 	1	 1     1;     
   36   3    0      0       0      0        0	1	0 	 240 	1	 1     1;    
   37   1    0      0       0      0	    0	1	0 	 220 	1	1.1   0.9;    
   38   1   23.4   8.4      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   39   1    0      0       0      0	    0	1	0 	 330 	1	1.1   0.9;    
   40   1    0      0       0      0	    0	1	0 	 110 	1	1.1   0.9;    
   41   1    0      0       0      0	    0	1	0 	 110 	1	1.1   0.9;    
   42   1   73.6   25.1     0      0	    0	1	0 	 110 	1	1.1   0.9;    
   43   1   20.5   9.5      0      0	    0	1	0 	 110 	1	1.1   0.9;    
   44   1    9.2   1.4      0      0	    0	1	0 	 110 	1	1.1   0.9;
   45   1   19.4   4.2      0      0	    0	1	0 	 110 	1	1.1   0.9;   
   46   2    0      0       0      0	    0	1	0 	 230 	1	 1     1;   
   47   2    0      0       0      0	    0	1	0 	 10.5 	1	 1     1;   
   48   2    0      0       0      0	    0	1	0 	 10.5 	1	 1     1;
];

%% Generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	21	235	  0	  190   -90   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	26	  0	  0	   27   -12   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	31	  0	  0	   27   -12   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	46	  0	  0	    0  -100   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	47	 43	 38	   38    0    1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;    
	48	 43	 38	   38    0    1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;    
];

%% Branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	13	33	 4.27	 10.71 	 71.03	    0	0	0	0	0	1	-360	360;
	25  35    7.4    331.7     0        0	0	0	1	0	1	-360	360;
    37  34   6.68    272.1     0        0	0	0	1	0	1	-360	360;
    11  33  24.74    42.68    268       0	0	0	0	0	1	-360	360;
    45  23  0.001    0.001     0        0	0	0	0	0	1	-360	360;    
    25  37  0.001    0.001     0        0	0	0	0	0	1	-360	360;
    33   1  15.57    40.49   269.06     0	0	0	0	0	1	-360	360;    
    16  41   4.81    8.39     50.2      0	0	0	0	0	1	-360	360;    
    45   1   1.37    3.57     23.62     0	0	0	0	0	1	-360	360;    
     2  28   4.31    24.2    277.05     0	0	0	0	0	1	-360	360;    
     2  15   0.36    2.02    23.12      0	0	0	0	0	1	-360	360;    
    10  15    5.9    33.11   379.01     0	0	0	0	0	1	-360	360;    
    17   3   15.1    28.86   187.32     0	0	0	0	0	1	-360	360;    
    11   3   9.23    19.52    107       0	0	0	0	0	1	-360	360;    
    29  11   2.67    9.21    60.4       0	0	0	0	0	1	-360	360;    
    44  23   3.18    5.38    32.37      0	0	0	0	0	1	-360	360;    
     6   5    31      175      0        0	0	0	0	0	1	-360	360;    
    40   6   10.8     31.6     0        0	0	0	0	0	1	-360	360;    
     8  40    98      179      0        0	0	0	0	0	1	-360	360;    
     8   6   13.3     35.5     0        0	0	0	0	0	1	-360	360;    
     8   5    25       51      0        0	0	0	0	0	1	-360	360;    
     9  27  14.65    61.87    420.6     0	0	0	0	0	1	-360	360;    
    29  45  1.394    4.116    25.7      0	0	0	0	0	1	-360	360;    
    23  19   1.83     4.76    31.59     0	0	0	0	0	1	-360	360;    
    37  14   5.11    34.94   363.17     0	0	0	0	0	1	-360	360;    
    27  22   9.35    40.07    264.6     0	0	0	0	0	1	-360	360;    
    18  38   0.53     1.36     9.1      0	0	0	0	0	1	-360	360;    
    16  32   3.34     5.85    36.4      0	0	0	0	0	1	-360	360;    
    43  40   1.83     2.26    5.86      0	0	0	0	0	1	-360	360;    
    41  42   1.83     2.26    5.86      0	0	0	0	0	1	-360	360;    
     2  21   0.001    52.9     0        0	0	0	1	0	1	-360	360;    
    28  39   4.48    30.64    318.5     0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9     1246      0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9     1246      0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9     1246      0	0	0	0	0	1	-360	360;    
    40  41   0.001   0.001      0       0	0	0	0	0	1	-360	360;    
    39  24   0.93    8.04      91       0	0	0	0	0	1	-360	360;    
    24  10   3.52    23.49    258.7     0	0	0	0	0	1	-360	360;    
    23   3   8.44    28.19    200.4     0	0	0	0	0	1	-360	360;    
    14  13    0.5    48.6      0        0	0	0	1	0	1	-360	360;    
    14  13    0.5    48.6      0        0	0	0	1	0	1	-360	360;    
    25   7   3.62    15.71    101.1     0	0	0	0	0	1	-360	360;    
    45  31   6.15    173.9     0        0	0	0	1	0	1	-360	360;    
    24   5   2.59    88.86     0        0	0	0	1	0	1	-360	360;    
    24   5   2.45    90.61     0        0	0	0	1	0	1	-360	360;    
     9   8   1.09     49       0        0	0	0	1	0	1	-360	360;    
    27   4   6.85    38.58    252.7     0	0	0	0	0	1	-360	360;    
     4  14   3.17    18.23   117.22     0	0	0	0	0	1	-360	360;    
    37  23   0.48     49       0        0	0	0	1	0	1	-360	360;    
    25  45   0.48     49       0        0	0	0	1	0	1	-360	360;    
    25  14   5.58    38.11   396.24     0	0	0	0	0	1	-360	360;    
    23  26   2.51     84       0        0	0	0	1	0	1	-360	360;    
    28  37   0.4      39       0        0	0	0	1	0	1	-360	360;    
    20   7   3.42    14.25     89       0	0	0	0	0	1	-360	360;    
    32  30   0.07    0.13     0.8       0	0	0	0	0	1	-360	360;    
    30  17    30      52       0        0	0	0	0	0	1	-360	360;    
    30  17    30      52       0        0	0	0	0	0	1	-360	360;    
    28  25   0.4      39       0        0	0	0	1	0	1	-360	360;   
    38  19  0.001   0.001      0        0	0	0	0	0	0	-360	360;    
    39  27   0.4      39       0        0	0	0	1	0	1	-360	360;    
    39  27   0.4      39       0        0	0	0	1	0	1	-360	360;    
    15  17   0.8     58.5      0        0	0	0	1	0	1	-360	360;    
    39  27   0.4      39       0        0	0	0	1	0	1	-360	360;    
    20  17   0.5      49       0        0	0	0	1	0	1	-360	360;    
    16  12   0.4     1.03     6.9       0	0	0	0	0	1	-360	360;    
    22  41   1.21     49       0        0	0	0	1	0	1	-360	360;    
    12  44  0.001   0.001      0        0	0	0	0	0	0	-360	360;    
    10   6   2.41   87.99      0        0	0	0	1	0	1	-360	360;    
    18  40   2.06    5.33     35.5      0	0	0	0	0	1	-360	360;    
    42  43  0.001   0.001      0        0	0	0	0	0	1	-360	360;    
    14  46  0.001   0.001      0        0	0	0	0	0	1	-360	360;     
    41  47  0.001    19.2      0        0	0	0	1	0	1	-360	360;     
    40  48  0.001    19.2      0        0	0	0	1	0	1	-360	360;     
    15  17   0.8     58.5      0        0	0	0	1	0	1	-360	360;     
];

%% bus names
mpc.bus_name = {
	'Node 1     Kubanskaya';
    'Node 2     Sevastopolskaya TES 330 kV';
    'Node 3     Yalta 1 SSh';
    'Node 4     Nasosnaya-2';
    'Node 5     Ostrovskaya 110 kV';
    'Node 6     Zapadno-Krimskaya 110 kV';
    'Node 7     Bahchisarai';
    'Node 8     Donuzlav 110 kV';
    'Node 9     Donuzlav 220 kV';
    'Node 10    Zapadno-Krimskaya 330 kV';
    'Node 11    Alushta 2 SSh 110 kV';
    'Node 12    Petrovskie Visoti 2 SSh';
    'Node 13    Kafa 110 kV';
    'Node 14    Kafa 220 kV';
    'Node 15    Sevastopolskaya 330 kV';
    'Node 16    Otpaika on Petrovskie Visoti';
    'Node 17    Sevastopolskaya SSh 2';
    'Node 18    Severnaya 2 SSh';
    'Node 19    Vostochnaya 1 SSh';
    'Node 20    Sevastopolskaya 220 kV';
    'Node 21    Sevastopolskaya TES PT-1';
    'Node 22    Simferopolskaya TEC';
    'Node 23    Simferopolskaya 2 SSh 110 kV';
    'Node 24    Ostrovskaya 330 kV';
    'Node 25    Simferopolskaya 1 SSh 220 kV';
    'Node 26    Simferopolskaya SK';
    'Node 27    Dzhankoi 220 kV';
    'Node 28    Simferopolskaya 330 kV';
    'Node 29    Dobroe';
    'Node 30    Otpaika';
    'Node 31    Simferopolskaya SK-2';
    'Node 32    Pochtovoe 2 TS';
    'Node 33    Starij Krim';
    'Node 34    Simferopol AT-2';
    'Node 35    Simferopol AT-1';
    'Node 36    OES';
    'Node 37    Simferopolskaya 2 SSh 220 kV';
    'Node 38    Vostochnaya 2 SSh';
    'Node 39    Dzhankoi 330 kV';
    'Node 40    Simferopolskaya TEC 2 SSh';
    'Node 41    Simferopolskaya TEC 1 SSh';
    'Node 42    Centralnaya 1 SSh';
    'Node 43    Centralnaya 2 SSh';
    'Node 44    Petrovskie Visoti 1 SSh';
    'Node 45    Simferopolskaya 1 SSh 110 kV';
    'Node 46    UShR';
    'Node 47    Simferopolskaya TEC';
    'Node 48    Simferopolskaya TEC';
};

%% Recalculation from named units to pu
 rc = size(mpc.branch);
 for i = 1:rc(1,1)
     for j = 1:2 
     
     Op_nom_node = find(mpc.bus(1:end,1) == mpc.branch(i,j));
     % Finds branch numbers in an array with nodes
     
     Unom_2nodes(j,1) = mpc.bus(Op_nom_node,10);
     % Creates a variable with voltage values at the ends of the branches
     
     end
     Unom = (max(Unom_2nodes))*10^3;
     Ybasic = (100*10^6)/(Unom^2);
     r = mpc.branch(i,3)*Ybasic;
     x = mpc.branch(i,4)*Ybasic;
     b = (mpc.branch(i,5)*(10^-6))/Ybasic;
     mpc.branch(i,3) = r;
     mpc.branch(i,4) = x;
     mpc.branch(i,5) = b;
 end

result = runpf(mpc);
disp(' ');
%% Automatic increase of active power in load node
fl1 = true;
while fl1 == true
  N_load = input('Choose number of load node [1, 3-9, 11-14, 17-19, 22, 27, 29-30, 32-33, 38, 42-45]: ');
  if (N_load < 1) || (N_load == 10) || (N_load == 15) || (N_load == 16) || (N_load == 20) || (N_load == 21) || (N_load == 23) || (N_load == 24) || (N_load == 25) || (N_load == 26) || (N_load == 28) || (N_load == 31) || (N_load == 34) || (N_load == 35) || (N_load == 36) || (N_load == 37) || (N_load == 39) || (N_load == 40) || (N_load == 41) || (N_load > 46)
      disp('The number of load node is set incorrectly! It must lie in the range')
      disp('[1, 3-9, 11-14, 17-19, 22, 27, 29-30, 32-33, 38, 42-45].')
      disp(' ');
  else fl1 = false;
  end;
end;
        
fl2 = true;
while fl2 == true
  eps = input('Calculation accuracy [0.0001, 0.001, 0.01, 0.1, 1]: ');
  if (eps ~= 0.0001) && (eps ~= 0.001) && (eps ~= 0.01) && (eps ~= 0.1) && (eps ~= 1)
      disp('The calculation accuracy is set incorrectly! Choose one of the following values: [0.0001, 0.001, 0.01, 0.1, 1].');
      disp(' ');
  else fl2 = false;
  end;
end;
      
fl3 = true;
while fl3 == true
dP = input('Increment of active power P, MW [1; 20]: ');
  if (dP < 1) || (dP > 20)
      disp('The increment is set incorrectly! It must lie in the range [1; 20] MW.');
      disp(' ');
  else fl3 = false;
  end;
end;    
 
i = 0;
Jak2 = result.detJ(1,1);
        
while dP >= eps
  while Jak2 >= 0
    Jak1 = result.detJ(1,1);
    result = runpf(mpc);
    Jak2 = result.detJ(1,1);
    i = i + 1;
    Tablenu(i+1,1) = i;                              % Step
    Tablenu(i+1,2) = dP;                             % dP, MW
    Tablenu(i+1,3) = mpc.bus(N_load,3);              % Ploadi, MW
    Tablenu(i+1,4) = result.bus(N_load,8);           % Voltage in node, pu
    
    Tablenu(i+1,5) = result.detJ(1,1);
    % Jacobian J
    
    Tablenu(i+1,6) = Tablenu(i+1,5)/dP;
    % First-order derivatives of Jacobian J'
    
    Tablenu(i+1,7) = (Tablenu(i,6)-Tablenu(i+1,6))/dP;
    % Second-order derivatives of Jacobian J''
    
    Tablenu(i+1,8) = Tablenu(i+1,5) + Tablenu(i+1,6)*dP + Tablenu(i+1,7)*dP^2; 
    % Taylor series expansion of Jacobian
    
    mpc.bus(N_load,3) = mpc.bus(N_load,3) + dP;
  end;

Jak2w = Jak2;
P2 = mpc.bus(N_load,3);
P1 = P2 - dP;
mpc.bus(N_load,3) = P1; 
dP = dP / 2;
i = i - 1;
result = runpf(mpc);
Jak2 = result.detJ(1,1);
end;      

Iterations = Tablenu(end,1);

%% Making assumptions
Tablenu(1,:) = [ ]; 
% Delete the first row of the table
    
Tablenu(1,7) = Tablenu(2,7)+(Tablenu(2,7)-Tablenu(3,7));
% Calculation the first value with linear interpolation

Tablenu(1,8) = Tablenu(2,8)+(Tablenu(2,8)-Tablenu(3,8));  
% Calculation the first value with linear interpolation    

%% Creating Tablepu
% For basic value is taken as the value obtained at the 1st iteration

for i = 1:Iterations
    
    Tablepu(i,1) = Tablenu(i,1);                    % Step
    Tablepu(i,2) = Tablenu(i,2);                    % dP, MW
    Tablepu(i,3) = Tablenu(i,3);                    % Ploadi, MW
    Tablepu(i,4) = Tablenu(i,4);                    % Voltage in node, pu
    
    Tablepu(i,5) = (Tablenu(i,5))/(Tablenu(1,5));
    % Jacobian J in pu of basic value
    
    Tablepu(i,6) = (Tablenu(i,6))/(Tablenu(1,6));
    % First-order derivatives of Jacobian J' in pu of basic value
    
    Tablepu(i,7) = (Tablenu(i,7))/(Tablenu(1,7));
    % Second-order derivatives of Jacobian J'' in pu of basic value
    
    Tablepu(i,8) = (Tablenu(i,8))/(Tablenu(1,8)); 
    % Taylor series expansion of Jacobian in pu of basic value

end;

%% Searching extreme regime
fprintf('Jacobian 1 = %10.4e.', Jak1);
fprintf('\nJacobian 2 = %10.4e.\n', Jak2w');
disp(['Number of iterations: ' num2str(Iterations) '.']);
disp(['Extreme regime for node ' num2str(N_load) ' is between ' num2str(P1) ' MW and ' num2str(P2) ' MW.']);

%% Charting plots
figure('Name','J(P)');
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Tablepu(1:i,3),Tablepu(1:i,5),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Jacobian J(P) in pu
plot(Tablepu(1:i,3),Tablepu(1:i,8),'--','LineWidth',2,'Color',[0.4 0.4 0.4]);
% Taylor series expansion of Jacobian in pu
title(['{\it J(P), node }' num2str(N_load)]);
xlim([Tablepu(1,3) P2]);
%xlim([Tablepu(1,3) 163]); % for node 5
%xlim([Tablepu(1,3) 135]); % for node 22
xlabel('{\it P}_{load} [MW]');
ylabel('{\it J} [pu]');
legend('Jacobian','Taylor series expansion of Jacobian');

figure('Name','J"(P)');
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Tablepu(1:i,3),Tablepu(1:i,7),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Second-order derivatives of Jacobian J''(P) in pu
title(['{\it J"(P), node }' num2str(N_load)]);
xlim([Tablepu(1,3) P2]);
%xlim([Tablepu(1,3) 163]); % for node 5
%xlim([Tablepu(1,3) 135]); % for node 22
xlabel('{\it P}_{load} [MW]');
ylabel('{\it J"} [pu]');

figure('Name','U(P)');
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Tablepu(1:i,3),Tablepu(1:i,4),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Voltage in node U(P), pu
title(['{\it U(P), node }' num2str(N_load)]);
xlim([Tablepu(1,3) P2]);
%xlim([Tablepu(1,3) 163]); % for node 5
%xlim([Tablepu(1,3) 135]); % for node 22
xlabel('{\it P}_{load} [MW]');
ylabel('{\it U} [pu]')

for i = 1:Iterations
    TableError(i,1) = i;
    TableError(i,2) = Tablepu(i,3);
    TableError(i,3) = abs((TableError(i,2)-P2))/P2*100;
end;

figure('Name','Percent error');
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(TableError(1:i,1),TableError(1:i,3),'-.','LineWidth',2,'Color',[0.4 0.4 0.4]);
% Error function
title(['{\it Percent error, node  }' num2str(N_load)]);
xlim([Tablepu(1,1) Iterations]);
xlabel('{\it Iteration index}');
ylabel('{\it Percent error}  [%]')