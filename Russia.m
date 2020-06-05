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
	1	1	31.2	7.3 	0	       0	0	1	0 	  110 	1	1.1   0.9;
	2	1	   0 	  0   	0	       0   	0	1	0	  330 	1	1.1	  0.9;
	3	1	92.3	 11  	0	       0    0	1	0 	  110 	1	1.1   0.9;
    4	1	25.7   15.1 	0	       0	0	1	0 	  220 	1	1.1   0.9;
    5	1	27.4	5.6 	0	0.003176	0	1	0 	  110 	1	1.1   0.9;
    6	1	  30	 10 	0	       0	0	1	0 	  110 	1	1.1   0.9;
    7	1	32.3   16.2 	0	       0	0	1	0 	  220 	1	1.1   0.9;
    8	1	45.9   28.3 	0	       0	0	1	0 	  110 	1	1.1   0.9;
    9	1	12.4    5.6 	0	       0	0	1	0 	  220 	1	1.1   0.9;    
   10 	1	   0      0  	0	       0	0	1	0 	  330 	1	1.1   0.9;    
   11 	1	  53    4.2     0          0	0	1	0 	  110 	1	1.1   0.9;    
   12   1   1.05   0.28     0          0	0	1	0 	  110 	1	1.1   0.9;
   13   1     55    5.1     0          0	0	1	0 	  110 	1	1.1   0.9;    
   14   1   41.7   25.7     0          0	0	1	0 	  220 	1	1.1   0.9;    
   15   1      0      0     0          0	0	1	0 	  330 	1	1.1   0.9;    
   16   1      0      0     0          0	0	1	0 	  110 	1	1.1   0.9;    
   17   1  193.8   25.1     0          0	0	1	0 	  110 	1	1.1   0.9;    
   18   1   41.1     15     0          0	0	1	0 	  110 	1	1.1   0.9;    
   19   1   23.1    8.3     0          0	0	1	0 	  110 	1	1.1   0.9;    
   20   1      0      0     0          0	0	1	0 	  220 	1	1.1   0.9;    
   21   2   41.7   25.7     0          0	0	1	0 	15.75 	1	 1     1;    
   22   1   17.1      5     0          0	0	1	0 	  220 	1	1.1   0.9;    
   23   1      0      0     0          0	0	1	0 	  110 	1	1.1   0.9;    
   24   1      0      0     0          0	0	1	0 	  330 	1	1.1   0.9;    
   25   1      0      0     0          0	0	1	0 	  220 	1	1.1   0.9;    
   26   2      0      0     0          0	0	1	0 	   11 	1	 1     1;    
   27   1   78.2   20.9     0          0	0	1	0 	  220 	1	1.1   0.9;    
   28   1      0      0     0          0	0	1	0 	  330 	1	1.1   0.9;    
   29   1   12.3    2.9     0          0	0	1	0 	  110 	1	1.1   0.9;    
   30   1   10.3    1.3     0          0	0	1	0 	  110 	1	1.1   0.9;    
   31   2      0      0     0          0	0	1	0 	   11 	1	 1     1;    
   32   1   21.8    8.8     0          0	0	1	0 	  110 	1	1.1   0.9;    
   33   1   56.8   18.5     0   0.003176	0	1	0 	  110 	1	 1     1;     
   34   1      0      0     0   0.003176    0	1	0 	   35 	1	 1     1;     
   35   1      0      0     0   0.003176    0	1	0 	   35 	1	 1     1;     
   36   3      0      0     0          0    0	1	0 	  240 	1	 1     1;    
   37   1      0      0     0          0	0	1	0 	  220 	1	1.1   0.9;    
   38   1   23.4    8.4     0          0	0	1	0 	  110 	1	1.1   0.9;    
   39   1      0      0     0          0	0	1	0 	  330 	1	1.1   0.9;    
   40   1      0      0     0          0	0	1	0 	  110 	1	1.1   0.9;    
   41   1      0      0     0          0	0	1	0 	  110 	1	1.1   0.9;    
   42   1   73.6   25.1     0          0	0	1	0 	  110 	1	1.1   0.9;    
   43   1   20.5    9.5     0          0	0	1	0 	  110 	1	1.1   0.9;    
   44   1    9.2    1.4     0          0	0	1	0 	  110 	1	1.1   0.9;
   45   1   19.4    4.2     0          0	0	1	0 	  110 	1	1.1   0.9;   
   46   2      0      0     0          0	0	1	0 	  230 	1	 1     1;   
   47   2      0      0     0          0	0	1	0 	 10.5 	1	 1     1;   
   48   2      0      0     0          0	0	1	0 	 10.5 	1	 1     1;
];

%% Generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	21	235	  0	  190   -90   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	26	  0	  0	   27   -12   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	31	  0	  0	   27   -12   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	46	  0	  0	    0  -100   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;
	47	 43	 38	   38     0   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;    
	48	 43	 38	   38     0   1	  100 	1   0   0    0	  0	  0	  0	  0	  0	  0	  0	  0	  0	  0;    
];

%% Branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	13	33	 4.27	 10.71 	  71.03	    0	0	0	0	0	1	-360	360;
	25  35    7.4    331.7     0        0	0	0	1	0	1	-360	360;
    37  34   6.68    272.1     0        0	0	0	1	0	1	-360	360;
    11  33  24.74    42.68    268       0	0	0	0	0	1	-360	360;
    45  23  0.001    0.001     0        0	0	0	0	0	1	-360	360;    
    25  37  0.001    0.001     0        0	0	0	0	0	1	-360	360;
    33   1  15.57    40.49   269.06     0	0	0	0	0	1	-360	360;    
    16  41   4.81     8.39     50.2     0	0	0	0	0	1	-360	360;    
    45   1   1.37     3.57    23.62     0	0	0	0	0	1	-360	360;    
     2  28   4.31     24.2   277.05     0	0	0	0	0	1	-360	360;    
     2  15   0.36     2.02    23.12     0	0	0	0	0	1	-360	360;    
    10  15    5.9    33.11   379.01     0	0	0	0	0	1	-360	360;    
    17   3   15.1    28.86   187.32     0	0	0	0	0	1	-360	360;    
    11   3   9.23    19.52     107      0	0	0	0	0	1	-360	360;    
    29  11   2.67     9.21     60.4     0	0	0	0	0	1	-360	360;    
    44  23   3.18     5.38    32.37     0	0	0	0	0	1	-360	360;    
     6   5    31      175      0        0	0	0	0	0	1	-360	360;    
    40   6   10.8     31.6     0        0	0	0	0	0	1	-360	360;    
     8  40    98      179      0        0	0	0	0	0	1	-360	360;    
     8   6   13.3     35.5     0        0	0	0	0	0	1	-360	360;    
     8   5    25       51      0        0	0	0	0	0	1	-360	360;    
     9  27  14.65    61.87    420.6     0	0	0	0	0	1	-360	360;    
    29  45  1.394    4.116     25.7     0	0	0	0	0	1	-360	360;    
    23  19   1.83     4.76    31.59     0	0	0	0	0	1	-360	360;    
    37  14   5.11    34.94   363.17     0	0	0	0	0	1	-360	360;    
    27  22   9.35    40.07    264.6     0	0	0	0	0	1	-360	360;    
    18  38   0.53     1.36      9.1     0	0	0	0	0	1	-360	360;    
    16  32   3.34     5.85     36.4     0	0	0	0	0	1	-360	360;    
    43  40   1.83     2.26     5.86     0	0	0	0	0	1	-360	360;    
    41  42   1.83     2.26     5.86     0	0	0	0	0	1	-360	360;    
     2  21   0.001    52.9     0        0	0	0	1	0	1	-360	360;    
    28  39   4.48    30.64    318.5     0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9      1246     0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9      1246     0	0	0	0	0	1	-360	360;    
    36  14   13.2    78.9      1246     0	0	0	0	0	1	-360	360;    
    40  41   0.001   0.001     0        0	0	0	0	0	1	-360	360;    
    39  24   0.93    8.04      91       0	0	0	0	0	1	-360	360;    
    24  10   3.52    23.49    258.7     0	0	0	0	0	1	-360	360;    
    23   3   8.44    28.19    200.4     0	0	0	0	0	1	-360	360;    
    14  13    0.5     48.6     0        0	0	0	1	0	1	-360	360;    
    14  13    0.5     48.6     0        0	0	0	1	0	1	-360	360;    
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
    28  37    0.4     39       0        0	0	0	1	0	1	-360	360;    
    20   7   3.42    14.25     89       0	0	0	0	0	1	-360	360;    
    32  30   0.07    0.13     0.8       0	0	0	0	0	1	-360	360;    
    30  17    30      52       0        0	0	0	0	0	1	-360	360;    
    30  17    30      52       0        0	0	0	0	0	1	-360	360;    
    28  25    0.4     39       0        0	0	0	1	0	1	-360	360;   
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
    18  40   2.06    5.33    35.5       0	0	0	0	0	1	-360	360;    
    42  43  0.001   0.001      0        0	0	0	0	0	1	-360	360;    
    14  46  0.001   0.001      0        0	0	0	0	0	1	-360	360;     
    41  47  0.001    19.2      0        0	0	0	1	0	1	-360	360;     
    40  48  0.001    19.2      0        0	0	0	1	0	1	-360	360;     
    15  17   0.8     58.5      0        0	0	0	1	0	1	-360	360;     
];

%% bus names
mpc.bus_name = {
	'Node 1     Kubanskaya';
    'Node 2     Sevastopolskaya TPS 330 kV';
    'Node 3     Yalta 1 TS';
    'Node 4     Nasosnaya - 2';
    'Node 5     Ostrovskaya 110 kV';
    'Node 6     Zapadno - Krimskaya 110 kV';
    'Node 7     Bahchisarai';
    'Node 8     Donuzlav 110 kV';
    'Node 9     Donuzlav 220 kV';
    'Node 10    Zapadno - Krimskaya 330 kV';
    'Node 11    Alushta 2 TS 110 kV';
    'Node 12    Petrovskie Visoti 2 TS';
    'Node 13    Kafa 110 kV';
    'Node 14    Kafa 220 kV';
    'Node 15    Sevastopolskaya 330 kV';
    'Node 16    Tap on Petrovskie Visoti';
    'Node 17    Sevastopolskaya TS 2';
    'Node 18    Severnaya 2 TS';
    'Node 19    Vostochnaya 1 TS';
    'Node 20    Sevastopolskaya 220 kV';
    'Node 21    Sevastopolskaya TPS ST-1';
    'Node 22    Simferopolskaya CP 220 kV';
    'Node 23    Simferopolskaya 2 TS 110 kV';
    'Node 24    Ostrovskaya 330 kV';
    'Node 25    Simferopolskaya 1 TS 220 kV';
    'Node 26    Simferopolskaya SK - 1';
    'Node 27    Dzhankoi 220 kV';
    'Node 28    Simferopolskaya 330 kV';
    'Node 29    Dobroe';
    'Node 30    Tap';
    'Node 31    Simferopolskaya SK - 2';
    'Node 32    Pochtovoe 2 TS';
    'Node 33    Starij Krim';
    'Node 34    Simferopol AT - 2';
    'Node 35    Simferopol AT - 1';
    'Node 36    OES';
    'Node 37    Simferopolskaya 2 TS 220 kV';
    'Node 38    Vostochnaya 2 TS';
    'Node 39    Dzhankoi 330 kV';
    'Node 40    Simferopolskaya CP 2 TS';
    'Node 41    Simferopolskaya CP 1 TS';
    'Node 42    Centralnaya 2 TS';
    'Node 43    Centralnaya 1 TS';
    'Node 44    Petrovskie Visoti 1 TS';
    'Node 45    Simferopolskaya 1 TS 110 kV';
    'Node 46    Centralnaya 1 TS';
    'Node 47    Conrolled Shunt Reactor';
    'Node 48    Sevastopolskaya TPS - 2';
};

%% Transfer from named units to pu
 rc = size(mpc.branch);
 for i = 1:rc(1,1)
     for j = 1:2
     Op_nom_uzl = find(mpc.bus(1:end,1) == mpc.branch(i,j)); % Finds branch numbers in an array with nodes
     Unom_2uzlov(j,1) = mpc.bus(Op_nom_uzl,10);              % Creates a variable with stress values at the ends of the branches
     end
     Unom = (max(Unom_2uzlov))*10^3;
     Ybaz = (100*10^6)/(Unom^2);
     r = mpc.branch(i,3)*Ybaz;
     x = mpc.branch(i,4)*Ybaz;
     b = (mpc.branch(i,5)*(10^-6))/Ybaz;
     mpc.branch(i,3) = r;
     mpc.branch(i,4) = x;
     mpc.branch(i,5) = b;
 end

result = runpf(mpc);
disp(' ');
 
 %% Automatic weighting of load nodes

        fl = true;
        while fl == true
        N_load = input('Choose number of load node [1, 3-9, 11-14, 17-19, 22, 27, 29-30, 32-33, 38, 42-45]: ');
            if (N_load < 0) || (N_load == 1) || (N_load == 10) || (N_load == 15) || (N_load == 16) || (N_load == 20) || (N_load == 21) || (N_load == 23) || (N_load == 24) || (N_load == 25) || (N_load == 26) || (N_load == 28) || (N_load == 31) || (N_load == 34) || (N_load == 35) || (N_load == 36) || (N_load == 37) || (N_load == 39) || (N_load == 40) || (N_load == 41) || (N_load > 46)
               disp('The number of load node is set incorrectly! It must lie in the range')
               disp('[1, 3-9, 11-14, 17-19, 22, 27, 29-30, 32-33, 38, 42-45].')
               disp(' ');
            else fl = false;
            end;
        end;
        
        fl2 = true;
        while fl2 == true
        eps = input('Calculation accuracy [0.001; 1]: ');
            if (eps <= 0) || (eps > 1)
               disp('The calculation accuracy is set incorrectly! It must lie in the range [0.001; 1].');
               disp(' ');
            else fl2 = false;
            end;
        end;
      
        fl3 = true;
        while fl3 == true
        dP = input('Increment of P, MW [1; 100]: ');
            if (dP < 0) || (dP > 100)
               disp('The increment is set incorrectly! It must lie in the range [1; 100] MW.');
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
                Tabl(i+1,1) = i;                                 % Step
                Tabl(i+1,2) = dP;                                % dP, MW
                Tabl(i+1,3) = mpc.bus(N_load, 3);                % Ploadi, MW
                Tabl(i+1,4) = result.bus(N_load, 8);             % Voltage in node, pu
                
                if (Tabl(i+1,4) > mpc.bus(N_load, 8))            % If the voltage value more than                                                                                               
                    Tabl(i+1,4) = 0                              % its basic value, it is accepted a value of 0
                end                                              % for correct caluclations
                
                Tabl(i+1,5) = result.detJ(1,1);                  % Jacobian |J|
                Tabl(i+1,6) = Tabl(i+1,5)/dP;                    % First derivatives of Jacobian |J'|
                Tabl(i+1,7) = (Tabl(i,6)-Tabl(i+1,6))/dP;        % Second derivatives of Jacobian |J''|
                mpc.bus(N_load, 3) = mpc.bus(N_load, 3) + dP;
            end;
            
            Jak2w = Jak2;
            P2 = mpc.bus(N_load, 3);
            P1 = P2 - dP;
            mpc.bus(N_load, 3) = P1; 
            dP = dP / 2;
            i = i - 1;
            result = runpf(mpc);
            Jak2 = result.detJ(1,1);
        end;
        
    Tabl(1,:) = [ ];           % Delete the first row of the table
    
    Tabl(1,7) = Tabl(2,7);     % First value of second derivatives in table 
                               % equal its second value for correct calculations
                               
    fprintf('Jacobian 1 = %10.4e.', Jak1);
    fprintf('\nJacobian 2 = %10.4e.\n', Jak2w');
    disp(' ');
    disp(['Extreme mode for node ' num2str(N_load) ' is between ' num2str(P1) ' MW and ' num2str(P2) ' MW.']); 
%% Charting plots
subplot(1,2,1);
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid minor;
hold on;
plot(Tabl(1:i,3),Tabl(1:i,5),'-ob','LineWidth',2,'MarkerSize',4); % Jacobian |J|(P)
title(['{\it |J|(P), node }' num2str(N_load)]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it |J|} [-]');

subplot(1,2,2);
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid minor;
hold on;
plot(Tabl(1:i,3),Tabl(1:i,7),'-ob','LineWidth',2,'MarkerSize',4);  % Second derivatives of Jacobian |J|''(P)
title(['{\it |J"|(P), node }' num2str(N_load)]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it |J"|} [MW^{-2}]');

figure;
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid minor;
hold on;
plot(Tabl(1:i,3),Tabl(1:i,4),'-ob','LineWidth',2,'MarkerSize',4);  % Voltage in node U(P)
title(['{\it U(P), node }' num2str(N_load)]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it U} [pu]')