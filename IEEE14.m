%   CASE14    Power flow data for IEEE 14 bus test case.
%   Please see CASEFORMAT for details on the case file format.
%   This data was converted from IEEE Common Data Format
%   (ieee14cdf.txt) on 15-Oct-2014 by cdf2matp, rev. 2393
%   See end of file for warnings generated during conversion.
%
%   Converted from IEEE CDF file from:
%       https://labs.ece.uw.edu/pstca/
% 
%  08/19/93 UW ARCHIVE           100.0  1962 W IEEE 14 Bus Test Case

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
	1	3	0	    0	    0	0	1	1.06	   0	0	1	1.06	0.94;
	2	2	21.7	12.7	0	0	1	1.045	-4.98	0	1	1.06	0.94;
	3	2	94.2	  19	0	0	1	1.01	-12.72	0	1	1.06	0.94;
	4	1	47.8	-3.9	0	0	1	1.019	-10.33	0	1	1.06	0.94;
	5	1	7.6	     1.6	0	0	1	1.02	-8.78	0	1	1.06	0.94;
	6	2	11.2	7.5	    0	0	1	1.07	-14.22	0	1	1.06	0.94;
	7	1	0	    0	    0	0	1	1.062	-13.37	0	1	1.06	0.94;
	8	2	0	    0	    0	0	1	1.09	-13.36	0	1	1.06	0.94;
	9	1	29.5	16.6	0	19	1	1.056	-14.94	0	1	1.06	0.94;
	10	1	9	    5.8	    0	0	1	1.051	-15.1	0	1	1.06	0.94;
	11	1	3.5	    1.8	    0	0	1	1.057	-14.79	0	1	1.06	0.94;
	12	1	6.1	    1.6	    0	0	1	1.055	-15.07	0	1	1.06	0.94;
	13	1	13.5	5.8	    0	0	1	1.05	-15.16	0	1	1.06	0.94;
	14	1	14.9	5	    0	0	1	1.036	-16.04	0	1	1.06	0.94;
];

%% Generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	232.4	-16.9	10	  0	    1.06	100	1	332.4	0	0	0	0	0	0	0	0	0	0	0	0;
	2	40	    42.4	50	  -40	1.045	100	1	140	    0	0	0	0	0	0	0	0	0	0	0	0;
	3	0	    23.4	40	  0	    1.01	100	1	100	    0	0	0	0	0	0	0	0	0	0	0	0;
	6	0    	12.2	24	  -6	1.07	100	1	100    	0	0	0	0	0	0	0	0	0	0	0	0;
	8	0	    17.4	24	  -6	1.09	100	1	100   	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% Branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.01938	0.05917	   0.0528	0	0	0	0	    0	1	-360	360;
	1	5	0.05403	0.22304	   0.0492	0	0	0	0	    0	1	-360	360;
	2	3	0.04699	0.19797	   0.0438	0	0	0	0    	0	1	-360	360;
	2	4	0.05811	0.17632	   0.034	0	0	0	0	    0	1	-360	360;
	2	5	0.05695	0.17388	   0.0346	0	0	0	0	    0	1	-360	360;
	3	4	0.06701	0.17103	   0.0128	0	0	0	0	    0	1	-360	360;
	4	5	0.01335	0.04211	   0	    0	0	0	0	    0	1	-360	360;
	4	7	0	    0.20912	   0	    0	0	0	0.978	0	1	-360	360;
	4	9	0	    0.55618	   0	    0	0	0	0.969	0	1	-360	360;
	5	6	0	    0.25202    0	    0	0	0	0.932	0	1	-360	360;
	6	11	0.09498	0.1989	   0	    0	0	0	0	    0	1	-360	360;
	6	12	0.12291	0.25581	   0	    0	0	0	0	    0	1	-360	360;
	6	13	0.06615	0.13027	   0	    0	0	0	0	    0	1	-360	360;
	7	8	0	    0.17615	   0	    0	0	0	0	    0	1	-360	360;
	7	9	0	    0.11001	   0	    0	0	0	0	    0	1	-360	360;
	9	10	0.03181	0.0845	   0	    0	0	0	0	    0	1	-360	360;
	9	14	0.12711	0.27038	   0	    0	0	0	0	    0	1	-360	360;
	10	11	0.08205	0.19207	   0	    0	0	0	0	    0	1	-360	360;
	12	13	0.22092	0.19988	   0	    0	0	0	0	    0	1	-360	360;
	13	14	0.17093	0.34802	   0	    0	0	0	0	    0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% Generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.0430292599	20	0;
	2	0	0	3	0.25	        20	0;
	2	0	0	3	0.01	        40	0;
	2	0	0	3	0.01	        40	0;
	2	0	0	3	0.01	        40	0;
];

result = runpf(mpc);
disp(' ');

 %% Automatic weighting of load nodes

        fl = true;
        while fl == true
        N_load = input('Choose number of load node [2-6, 9-14]: ');
            if (N_load <= 1) || (N_load == 7) || (N_load == 8) || (N_load > 14)
               disp('The number of load node is set incorrectly! It must lie in the range [2-6, 9-14].')
               disp(' ');
            else fl = false;
            end;
        end;
        
        fl2 = true;
        while fl2 == true
        eps = input('Calculation accuracy [0.001; 1]: ');
            if (eps <= 0) || (eps > 1)
               disp('The Calculation accuracy is set incorrectly! It must lie in the range [0.001; 1].');
               disp(' ');
            else fl2 = false;
            end;
        end;
      
        fl3 = true;
        while fl3 == true
        dP = input('Increment of P, MW: ');
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
                Tabl(i+1,4) = result.detJ(1,1);                  % Jacobian |J|
                Tabl(i+1,5) = Tabl(i+1,4)/dP;                    % First derivatives of Jacobian |J'|
                Tabl(i+1,6) = (Tabl(i,5)-Tabl(i+1,5))/dP;        % Second derivatives of Jacobian |J''|
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
        
    Tabl(1,:) = [ ];   % Delete the first row of the table
    
    Tabl(1,6) = Tabl(2,6);     % First value of second deriv in table equal 
                                % its second value for correct calculations
    
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
plot(Tabl(1:i,3),Tabl(1:i,4),'-ob','LineWidth',2,'MarkerSize',4); % Jacobian |J|(P)
title(['{\it |J|(P), node }' num2str(N_load)]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it |J|} [-]');

subplot(1,2,2);
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');
grid minor;
hold on;
plot(Tabl(1:i,3),Tabl(1:i,6),'-ob','LineWidth',2,'MarkerSize',4);  % Second derivatives of Jacobian |J|''(P)
title(['{\it |J"|(P), node }' num2str(N_load)]);
xlabel('{\it P}_{load} [MW]');
ylabel('{\it |J"|} [-]');