# Extreme regime detection
The aim of this project is the automatic load adding in the node and search of extreme regimes, i.e. loss of static stability.

## Installation
 - install MATPOWER 7.0 https://matpower.org/download/
 - include the adopted versions of runpf.m and newtonpf.m in the current path

## Changes to MATPOWER library files
Based on the MATPOWER 7.0 the files runpf.m and newtonpf.m are adopted.
 
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

## Test simulations using IEEE14
To run the simulation for the [IEEE14](https://electricgrids.engr.tamu.edu/electric-grid-test-cases/ieee-14-bus-system/) test grid run 
```
IEEE14.m
```
from the MATLAB prompt. Here, the user can select a number of parameters:
 - load node to investigate (the user can select any node that is displayed in the command window of MATLAB),
 - accuracy of calculation (default the value 0.001 for greater accuracy of calculation),
 - power increment (default 5 MW also for greater accuracy of calculation).

After a successful calculation the graphs of the Jacobian |J| and its second derivative |J''| are shown. 

Also in the command window a power range is displayed, where the limit mode for static aperiodic stability is located.

## Questions 05.06.2020
1. The need to use matcont?
2. Incorrect graphing results of the second Jacobian derivative (probably, the minimum and maximum values along the y axis should be set)
3. Writing an article in LaTex?
