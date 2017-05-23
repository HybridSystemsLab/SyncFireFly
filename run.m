% initial conditions
clear all

%   Creating a loop to process 50 images to look at. Will save all data to
%   help find convergence properties
% for iter = 24:74
global e
e = 0.1;
y0 = [   0;    0.4];

% simulation horizon
TSPAN=[0 13];
JSPAN = [0 50];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flows
rule = 1;

options = odeset('RelTol',1e-6,'MaxStep',.1);

% simulate asypmtotic synch
y0 = [   0;    0.4];
[t1, y1, j1] = hybridsolver( @f,@g,@C,@D,y0,TSPAN,JSPAN,rule,options);
% simulation synch forever
y0 = [   0;    0];
[t2, y2, j2] = hybridsolver( @f,@g,@C,@D,y0,TSPAN,JSPAN,rule,options);
% simulation desynch
y0 = [   0;    1 - 0.488088481701515];
[t3, y3, j3] = hybridsolver( @f,@g,@C,@D,y0,TSPAN,JSPAN,rule,options);

%%

Ts = 0.488088481701515;
figure(1)
subplot(211)
plot(t1,y1,'LineWidth',2)
axis([0,max(t1),0,1])
subplot(212)
V1 = V(y1,Ts,.1);
plot(t1,V1,'LineWidth',2)
axis([0,max(t1),0,max(V1)])
saveas(gcf,'ex21.eps','epsc2')

figure(2)
subplot(211)
plot(t2,y2,'LineWidth',2)
axis([0,max(t2),0,1])
subplot(212)
V2 = V(y2,Ts,0.1);
plot(t2,V2,'LineWidth',2)
axis([0,max(t2),-1,1]) 
saveas(gcf,'ex22.eps','epsc2')

figure(3)
subplot(211)
plot(t3,y3,'LineWidth',2)
axis([0,max(t3),0,1])
subplot(212)
V3 = V(y3,Ts,0.1);
plot(t3,V3,'LineWidth',2)
axis([0,max(t3),0,1])
saveas(gcf,'ex23.eps','epsc2')