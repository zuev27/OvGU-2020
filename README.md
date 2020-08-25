# Extreme regime detection
The aim of this project is the automatic load adding in the node and search of extreme regimes, i.e. loss of steady-state stability.

## Installation
 - install [MATPOWER 7.0](https://matpower.org/download/)
 - include the adopted versions of following files in the current path:

```
1. newtonpf.m
2. runpf.m
```

## Changes to MATPOWER library files
Based on the MATPOWER 7.0 files newtonpf.m and runpf.m are adopted.
 
1. newtonpf.m: added the calculation of Jacobian of power system.

```
1 function [V, converged, i, detJ] = newtonpf(Ybus, Sbus, V0, ref, pv, pq, mpopt)
...
106    J = [   j11 j12;
107            j21 j22;    ];
108        
109    detJ = det(J);
```
2. runpf.m: added the value of Jacobian of power system in calculation of power flow.

```
248    if mpopt.pf.v_cartesian                  %% power, cartesian
249          newtonpf_fcn = @newtonpf_S_cart;
250       else                                  %% default - power, polar
251          newtonpf_fcn = @newtonpf;
252       end
253    end
254    [V, success, iterations, detJ] = newtonpf_fcn(Ybus, Sbus, V0, ref, pv, pq, mpopt);
...
390   mpc.et = toc(t0);
391   mpc.success = success;
392   mpc.iterations = its;
393   mpc.detJ = detJ;
```

## Test simulations using IEEE 14 Bus System and real scheme of South of Russia
User can select one of two schemes to run the simulation:
1. [IEEE 14-Bus System](https://electricgrids.engr.tamu.edu/electric-grid-test-cases/ieee-14-bus-system/)
```
IEEE14.m
```
2. Real scheme of South of Russia
```
Russia.m
```
from the MATLAB prompt. Here, the user can select a number of parameters:
 - load node to investigate (the user can select any node that is displayed in the command window of MATLAB),
 - accuracy of calculation (default the value 0.001 for better results of calculation),
 - increment of active power (default 1 MW also for better results of calculation).

After a successful calculation the graphs of the Jacobian J and its second-order derivative J'' are shown and also graph of the voltage in the analyzed node and error function graph are plotted. 

Also in the command window a power range is displayed where the extreme regime for steady-state aperiodic stability is located.
