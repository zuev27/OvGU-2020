# Work-in-OvGU-2020

Project works on MATLAB library called as MATPOWER for calculation electric regimes.

You can download the latest version matpower7.0 following the link: https://matpower.org/download/

It's need to install library matpower in MATLAB. Move the downloaded folder 'matpower7.0' in folder 'toolbox' of MATLAB
The path to the this folder must be this (for MATLAB R2012a): C:\Program Files\MATLAB\R2012a\toolbox.
So, the final path must be this: C:\Program Files\MATLAB\R2012a\toolbox\matpower7.0.
Don't close the window with this folder, it will be needed later.

After this, open the MATLAB, click the button 'Set Path' -> 'Add with Subfolders' (in MATLAB R2012a 'File' -> 'Set Path...').
Be careful that you add matpower folder (C:\Program Files\MATLAB\R2012a\toolbox\matpower7.0). Finally, you click 'Save' and 'Close'.

Further, you can test MATPOWER by typing in Command Window 'test_matpower'. After this action if you didn't give errors with red color,
it's OK and MATPOWER will work correctly.

Now, you must replace two files in matpower folder (C:\Program Files\MATLAB\R2012a\toolbox\matpower7.0\lib)
such as 'newtonpf.m' and 'runpf.m' on files in repository with same name of file. It's last action of setup matpower for this project.

-----
This project realises process of automatic weighting of load nodes and search of extreme regim of static aperiodic stability.
In repository two test schemes were added: first it's widely known scheme IEEE-14 and second scheme is real scheme of flow distribution
of the south of Russia.


After running the program and interacting with the user
(selection of the load node, accuracy of calculation and power increment),
the selected load node is weighted with the simultaneous calculation of the Jacobian, its first and second derivatives.

The end of the calculation is the construction of graphs of the Jacobian J(Р)
and its second derivatives J''(P) of the weighted parameter (load value in the node).

Also in the command window a power range is displayed, where the limit mode for static aperiodic stability is located.
