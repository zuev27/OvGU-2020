%   CASE14    Power flow data for IEEE 14 bus test case.
%   This data was converted from IEEE Common Data Format
%   (ieee14cdf.txt) on 15-Oct-2014 by cdf2matp, rev. 2393
%   See end of file for warnings generated during conversion.
%
%   Converted from IEEE CDF file from: https://labs.ece.uw.edu/pstca/
% 
%   08/19/93 UW ARCHIVE           100.0  1962 W IEEE 14 Bus Test Case
%
%   MATPOWER

clc;
clear all;

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% System MVA base
mpc.baseMVA = 100;

%% Bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	  0	     0	    0	0	1	1.06	   0	 230   1	1.06	0.94;
	2	2	21.7   12.7	    0	0	1	1.045	-4.98	 230   1	1.06	0.94;
	3	2	94.2	19	    0	0	1	1.01	-12.72	 230   1	1.06	0.94;
	4	1	47.8   -3.9	    0	0	1	1.019	-10.33	 230   1	1.06	0.94;
	5	1	 7.6	1.6	    0	0	1	1.02	-8.78	 230   1	1.06	0.94;
	6	2	11.2	7.5	    0	0	1	1.07	-14.22	 115   1	1.06	0.94;
	7	1	  0	     0	    0	0	1	1.062	-13.37	 115   1	1.06	0.94;
	8	2	  0	     0	    0	0	1	1.09	-13.36	 115   1	1.06	0.94;
	9	1	29.5   16.6	    0	0	1	1.056	-14.94	 115   1	1.06	0.94;
	10	1	  9	    5.8	    0	0	1	1.051	-15.1	 115   1	1.06	0.94;
	11	1	 3.5	1.8	    0	0	1	1.057	-14.79	 115   1	1.06	0.94;
	12	1	 6.1	1.6	    0	0	1	1.055	-15.07	 115   1	1.06	0.94;
	13	1	13.5	5.8	    0	0	1	1.05	-15.16	 115   1	1.06	0.94;
	14	1	14.9	 5	    0	0	1	1.036	-16.04	 115   1	1.06	0.94;
];

%% Generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	232.4  -16.9	10	   0	1.06	100	1	332.4	0	0	0	0	0	0	0	0	0	0	0	0;
	2	 40	    42.4	50	  -40	1.045	100	1	140	    0	0	0	0	0	0	0	0	0	0	0	0;
	3	  0	    23.4	40	   0	1.01	100	1	100	    0	0	0	0	0	0	0	0	0	0	0	0;
	6	  0    	12.2	24	  -6	1.07	100	1	100    	0	0	0	0	0	0	0	0	0	0	0	0;
	8	  0	    17.4	24	  -6	1.09	100	1	100   	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% Branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.01938	  0.05917	0.0528	 0	 0	 0	   0	 0	 1	 -360	360;
	1	5	0.05403	  0.22304	0.0492	 0	 0	 0	   0	 0	 1	 -360	360;
	2	3	0.04699   0.19797	0.0438	 0	 0	 0	   0     0	 1	 -360	360;
	2	4	0.05811	  0.17632	0.034	 0	 0	 0	   0	 0	 1	 -360	360;
	2	5	0.05695	  0.17388	0.0346	 0	 0	 0	   0	 0	 1	 -360	360;
	3	4	0.06701	  0.17103	0.0128   0	 0	 0	   0	 0	 1	 -360	360;
	4	5	0.01335	  0.04211	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	4	7	   0	  0.20912	   0	 0	 0	 0	 0.978	 0	 1	 -360	360;
	4	9	   0	  0.55618	   0	 0	 0	 0	 0.969	 0	 1	 -360	360;
	5	6	   0	  0.25202      0	 0	 0	 0	 0.932	 0	 1	 -360	360;
	6	11	0.09498	  0.1989       0	 0	 0	 0	   0	 0	 1	 -360	360;
	6	12	0.12291   0.25581	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	6	13	0.06615	  0.13027	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	7	8	   0	  0.17615      0	 0	 0	 0	   0	 0	 1	 -360	360;
	7	9	   0	  0.11001      0	 0	 0	 0	   0	 0	 1	 -360	360;
	9	10	0.03181	  0.0845	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	9	14	0.12711   0.27038	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	10	11	0.08205	  0.19207	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	12	13	0.22092   0.19988	   0	 0	 0	 0	   0	 0	 1	 -360	360;
	13	14	0.17093   0.34802	   0	 0	 0	 0	   0	 0	 1	 -360	360;
];

%%-----  OPF Data  -----%%
%% Generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.0430292599	20	0;
	2	0	0	3	    0.25	    20	0;
	2	0	0	3	    0.01	    40	0;
	2	0	0	3       0.01	    40	0;
	2	0	0	3	    0.01	    40	0;
];

result = runpf(mpc);
disp(' ');

%% Automatic increase of active power in load node
fl1 = true;
while fl1 == true
N_load = input('Choose number of load node [2-6, 9-14]: ');
  if (N_load <= 1) || (N_load == 7) || (N_load == 8) || (N_load > 14)
      disp('The number of load node is set incorrectly! It must lie in the range [2-6, 9-14].')
      disp(' ');
  else fl1 = false;
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
dP = input('Increment of P, MW [1; 20]: ');
  if (dP < 0) || (dP > 20)
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
    Table(i+1,1) = i;                              % Step
    Table(i+1,2) = dP;                             % dP, MW
    Table(i+1,3) = mpc.bus(N_load,3);              % Ploadi, MW
    Table(i+1,4) = result.bus(N_load,8);           % Voltage in node, pu
    
    Table(i+1,5) = result.bus(N_load,8)*mpc.bus(N_load,10);         
    % Voltage in node, kV
    
    Table(i+1,6) = result.detJ(1,1);
    % Jacobian J
    
    Table(i+1,7) = Table(i+1,6)/dP;
    % First-order derivatives of Jacobian J'
    
    Table(i+1,8) = (Table(i,7)-Table(i+1,7))/dP;
    % Second-order derivatives of Jacobian J''
    
    Table(i+1,9) = Table(i+1,6) + Table(i+1,7)*dP + Table(i+1,8)*dP^2; 
    % Taylor series expansion of Jacobian
    
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

%% Making assumptions
Table(1,:) = [ ]; 
% Delete the first row of the table
    
Table(1,8) = Table(2,8)+(Table(2,8)-Table(3,8));
% Calculation the first value with linear interpolation

Table(1,9) = Table(2,9)+(Table(2,9)-Table(3,9));  
% Calculation the first value with linear interpolation    

%% Searching extreme regime
Iterations = Table(end,1);
fprintf('Jacobian 1 = %10.4e.', Jak1);
fprintf('\nJacobian 2 = %10.4e.\n', Jak2w');
disp(['Number of iterations: ' num2str(Iterations) '.']);
disp(['Extreme regime for node ' num2str(N_load) ' is between ' num2str(P1) ' MW and ' num2str(P2) ' MW.']);

%% Charting plots
figure('Name','J(P)');
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Table(1:i,3),Table(1:i,6),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Jacobian J(P)
plot(Table(1:i,3),Table(1:i,9),'--','LineWidth',2,'Color',[0.4 0.4 0.4]);
% Taylor series expansion of Jacobian
title(['{\it J(P), node }' num2str(N_load)]);
xlim([Table(1,3) inf]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it J} [-]');
legend('Jacobian','Taylor series expansion of Jacobian');

figure('Name','J"(P)');
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Table(1:i,3),Table(1:i,8),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Second-order derivatives of Jacobian J''(P)
title(['{\it J"(P), node }' num2str(N_load)]);
xlim([Table(1,3) inf]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it J"} [MW^{ -2}]');

figure('Name','U(P)');
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(Table(1:i,3),Table(1:i,4),'-','LineWidth',2,'Color',[0.25 0.25 0.25]);
% Voltage in node U(P), pu
title(['{\it U(P), node }' num2str(N_load)]);
xlim([Table(1,3) inf]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it U} [pu]')

for i = 1:Iterations
    TableErr(i,1) = i;
    TableErr(i,2) = Table(i,3);
    TableErr(i,3) = P2;
    TableErr(i,4) = 100;
    TableErr(i,5) = abs((TableErr(i,2)-TableErr(i,3)))/(TableErr(i,3))*100;
end;

figure('Name','Percent error');
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid on;
hold on;
plot(TableErr(1:i,1),TableErr(1:i,4),'-','LineWidth',2,'Color',[0.1 0.1 0.1]);
plot(TableErr(1:i,1),TableErr(1:i,5),'-.','LineWidth',2,'Color',[0.4 0.4 0.4]);
% Error function
title(['{\it Percent error, node }' num2str(N_load)]);
xlim([Table(1,1) Iterations]);
xlabel('{\it Iteration index}');
ylabel('{\it Percent error} [%]')