# Extreme regime detection
The aim of this project is the automatic load adding in the node and search of extreme regimes, i.e. loss of steady-state stability. Author the DAAD organization for funding and the opportunity to carry out this research work on the [Institute for Automation Engineering (IFAT)](https://www.ifat.ovgu.de/en/) at the Otto-von-Guericke University in Magdeburg.

## Installation
 - install [MATPOWER 7.1](https://matpower.org/download/)
 - include the adopted versions of following files in the current path:

```
1. newtonpf.m
2. runpf.m
```

## Changes to MATPOWER library files
Based on the MATPOWER 7.1 files newtonpf.m and runpf.m are adopted.
 
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
274                        end
275                    end
276                    [V, success, iterations, detJ] = newtonpf_fcn(Ybus, Sbus, V0, ref, pv, pq, mpopt);
277                case {'FDXB', 'FDBX'}
278                    [Bp, Bpp] = makeB(baseMVA, bus, branch, alg);
279                    [V, success, iterations] = fdpf(Ybus, Sbus, V0, Bp, Bpp, ref, pv, pq, mpopt);
...
392   mpc.et = toc(t0);
393   mpc.success = success;
394   mpc.iterations = its;
395   mpc.detJ = detJ;
```

## Test simulations using IEEE 14-Bus System and real scheme of South of Russia
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
 - increment of active power (default 2 MW also for better results of calculation).

After a successful calculation the graphs are shown of the normalized Jacobian ||J|| and its second-order derivative ||J''||. Also voltage in the analyzed node and error function graphs are plotted. For the basic value the value calculated as a result of steady-state regime on first step was chosen.

Also in the command window a power range is displayed where the extreme regime for steady-state aperiodic stability is located.
