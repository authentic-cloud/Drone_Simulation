fs =100;
Ts=1/fs;



t=2.5

p0 = [ 0;  0; -3; 0];
p1 = [ 2; -2; -3; 0];
p2 = [ 5;  2; -4; 0];
p3 = [7;-3;-5;-pi/2];
p4 = [0;-3;-2;-pi];
 
%  x_traj=[(ones(1,t1*fs)*p1(1)) linspace((p1(1)),(p2(1)),(t)*fs) linspace((p2(1)),(p3(1)),(t)*fs)];
%  y_traj=[(ones(1,t1*fs)*p1(2)) linspace((p1(2)),(p2(2)),(t)*fs) linspace((p2(2)),(p3(2)),(t)*fs)];
%  z_traj=[(ones(1,t1*fs)*p1(3)) linspace((p1(3)),(p2(3)),(t)*fs) linspace((p2(3)),(p3(3)),(t)*fs)];
%  yaw_traj=[(ones(1,t1*fs)*p1(4)) linspace((p1(4)),(p2(4)),(t)*fs) linspace((p2(4)),(p3(4)),(t)*fs)];

 xtraj_m=[mtraj(@lspb,0,p1(1),t*fs) mtraj(@lspb,p1(1),p2(1),t*fs) mtraj(@lspb,p2(1),p3(1),t*fs) mtraj(@lspb,p3(1),p4(1),t*fs)]
 ytraj_m=[mtraj(@lspb,0,p1(2),t*fs) mtraj(@lspb,p1(2),p2(2),t*fs) mtraj(@lspb,p2(2),p3(2),t*fs) mtraj(@lspb,p3(2),p4(2),t*fs)]
 ztraj_m=[mtraj(@lspb,0,p1(3),t*fs) mtraj(@lspb,p1(3),p2(3),t*fs) mtraj(@lspb,p2(3),p3(3),t*fs) mtraj(@lspb,p3(3),p4(3),t*fs)]
 yawtraj_m=[mtraj(@lspb,0,p1(4),t*fs) mtraj(@lspb,p1(4),p2(4),t*fs) mtraj(@lspb,p2(4),p3(4),t*fs) mtraj(@lspb,p3(4),p4(4),t*fs)]

 xtraj=xtraj_m(:)
 ytraj=ytraj_m(:)
 ztraj=ztraj_m(:)
 yawtraj=yawtraj_m(:)


xTrajectory = timeseries(xtraj,0:Ts:(length(xtraj)-1)/fs);
yTrajectory = timeseries(ytraj,0:Ts:(length(ytraj)-1)/fs);
zTrajectory = timeseries(ztraj,0:Ts:(length(ztraj)-1)/fs);
yawTrajectory = timeseries(yawtraj,0:Ts:(length(yawtraj)-1)/fs);

plot(xTrajectory)


