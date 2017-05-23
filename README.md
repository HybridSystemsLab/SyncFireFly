I. Synopsis
------------
This program simulates a synchronization algorithm of two connected impulse coupled oscillators where the phase response curve is given by e \tau^2. 

II. File List
------------
run.m 					%Initializes paramters, calls hybridsolver.m, and plots output
C.m						% Flow Set
f.m 					% Flow Map
D.m 					% Jump Set
g.m 					% Jump Map
hybridsolver.m 			% Hybrid equations solver
V.m 					% Calculates the Lyapunov function

Code was built using Matlab 2015a. Other builds are untested. 
