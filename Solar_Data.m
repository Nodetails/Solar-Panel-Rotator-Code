%%Solar Data Lookup-Table-Creator

%Initial data

Time = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15];
TimeW = [1 2 3 4 5 6 7 8 9 10];
YawW = [-5 -5 0 16 33 42 55 74 85 99 105 138 -5 -5 -5];
Fixed_Pitch = [0 45 90 135 180];
Full_Rot_Pitch = [0:1:180];
days = [1:1:366];

%Panel Pitch Rotations

Panel_A_Or_0_Day_1 = [2.599	2.685	2.646	2.63	2.614	2.598	2.552	...
    2.533	2.598	2.38	2.394	2.415	2.398	2.291	2.267];

Panel_A_Or_90_Day_1 = [2.420	2.581	2.573	2.586	2.589	2.58	2.593	...
    2.622	2.659	2.618	2.644	2.61	2.628	2.487	2.415];

Panel_A_Or_180_Day_1 = [2.316	2.351	2.317	2.281	2.375	2.353	...
    2.363	2.4	2.42	2.542	2.626	2.605	2.657	2.603	2.545];

Panel_B_Or_0_Day_1 = [2.539	2.628	2.59	2.576	2.548	2.544	...
    2.5	2.498	2.536	2.366	2.378	2.319	2.32	2.242	2.233];

Panel_B_Or_90_Day_1 = [2.416	2.512	2.534	2.55	2.553	2.557	...
    2.548	2.571	2.596	2.565	2.61	2.6	2.589	2.486	2.392];

Panel_B_Or_180_Day_1 = [2.228	2.305	2.27	2.267	2.313	2.306	...
    2.332	2.344	2.378	2.52	2.6	2.588	2.612	2.576	2.516];

Panel_C_Or_0_Day_1 = [2.574	2.686	2.657	2.644	2.617	2.602	2.55	...
    2.519	2.588	2.4	2.343	2.391	2.355	2.122	2.121];

Panel_C_Or_90_Day_1 = [2.413	2.563	2.612	2.622	2.627	2.613	...
    2.606	2.62	2.637	2.647	2.666	2.652	2.62	2.516	2.4];

Panel_C_Or_180_Day_1 = [1.878	2.075	2.224	2.264	2.387	2.381	...
    2.366	2.36	2.363	2.584	2.654	2.638	2.655	2.63	2.54];

Panel_D_Or_45_Day_1 = [2.609	2.692	2.675	2.604	2.678	2.597	...
    2.648	2.619	2.628	2.464	2.383	2.325	2.426	2.392	2.364];

Panel_D_Or_135_Day_1 = [2.435	2.488	2.436	2.342	2.383	2.444	...
    2.515	2.514	2.525	2.636	2.63	2.6	2.645	2.627	2.558];

Panel_E_Or_45_Day_1 = [2.582	2.673	2.665	2.561	2.62	2.592	...
    2.62	2.592	2.608	2.494	2.373	2.388	2.418	2.412	2.35];

Panel_E_Or_135_Day_1 = [2.396	2.464	2.446	2.316	2.356	2.466	...
    2.543	2.528	2.528	2.615	2.626	2.581	2.628	2.602	2.55];

Panel_A_Or_45_Day_2 = [2.598	2.662	2.694	2.703	2.614	2.664	...
    2.659	2.612	2.669	2.372	2.384	2.197	2.386	2.352	2.164];

Panel_A_Or_135_Day_2 = [2.346	2.44	2.442	2.388	2.312	2.475	...
    2.57	2.52	2.564	2.606	2.668	2.653	2.621	2.552	2.524];

Panel_B_Or_45_Day_2 = [2.558	2.623	2.647	2.646	2.595	2.634	...
    2.602	2.573	2.624	2.446	2.313	2.247	2.214	2.335	2.219];

Panel_B_Or_135_Day_2 = [2.328	2.414	2.424	2.394	2.305	2.412	...
    2.499	2.468	2.474	2.586	2.62	2.613	2.6	2.592	2.556];

Panel_C_Or_45_Day_2 = [2.55	2.656	2.682	2.69	2.628	2.664	...
    2.642	2.598	2.665	2.435	2.375	2.346	2.345	2.312	2.269];

Panel_C_Or_135_Day_2 = [2.239	2.408	2.409	2.37	2.274	2.446	...
    2.562	2.52	2.55	2.646	2.659	2.635	2.648	2.598	2.535];

Panel_D_Or_0_Day_2 = [2.557	2.654	2.679	2.588	2.604	2.652	2.589...
    2.592	2.58	2.345	2.222	2.249	2.203	2.232	2.16];

Panel_D_Or_90_Day_2 = [2.348	2.446	2.52	2.535	2.602	2.646	...
    2.628	2.604	2.634	2.592	2.602	2.552	2.511	2.421	2.308];

Panel_D_Or_180_Day_2 = [2.266	2.32	2.248	2.294	2.395	2.37	...
    2.369	2.393	2.292	2.597	2.613	2.62	2.6	2.594	2.556];

Panel_E_Or_0_Day_2 = [2.553	2.643	2.652	2.56	2.604	2.623	2.566	...
    2.542	2.518	2.362	2.385	2.34	2.243	2.22	2.15];

Panel_E_Or_90_Day_2 = [2.353	2.47	2.581	2.53	2.6	2.628	2.616	...
    2.616	2.619	2.596	2.59	2.55	2.515	2.472	2.358];

Panel_E_Or_180_Day_2 = [2.275	2.313	2.293	2.338	2.381	2.403	...
    2.383	2.41	2.363	2.54	2.588	2.599	2.582	2.576	2.545];

%Put above into big matrix with averaged data

Panel(1,:)=Panel_A_Or_0_Day_1;
Panel(2,:)=Panel_B_Or_0_Day_1;
Panel(3,:)=Panel_C_Or_0_Day_1;
Panel(4,:)=Panel_D_Or_0_Day_2;
Panel(5,:)=Panel_E_Or_0_Day_2;
Panel(6,:)= (Panel(1,:) + Panel(2,:) + Panel(3,:) + Panel(4,:) + Panel(5,:)) / 5;

Panel(7,:)=Panel_A_Or_45_Day_2;
Panel(8,:)=Panel_B_Or_45_Day_2;
Panel(9,:)=Panel_C_Or_45_Day_2;
Panel(10,:)=Panel_D_Or_45_Day_1;
Panel(11,:)=Panel_E_Or_45_Day_1;
Panel(12,:)= (Panel(7,:) + Panel(8,:) + Panel(9,:) + Panel(10,:) + Panel(11,:)) / 5;

Panel(13,:)=Panel_A_Or_90_Day_1;
Panel(14,:)=Panel_B_Or_90_Day_1;
Panel(15,:)=Panel_C_Or_90_Day_1;
Panel(16,:)=Panel_D_Or_90_Day_2;
Panel(17,:)=Panel_E_Or_90_Day_2;
Panel(18,:)= (Panel(13,:) + Panel(14,:) + Panel(15,:) + Panel(16,:) + Panel(17,:)) / 5;

Panel(19,:)=Panel_A_Or_135_Day_2;
Panel(20,:)=Panel_B_Or_135_Day_2;
Panel(21,:)=Panel_C_Or_135_Day_2;
Panel(22,:)=Panel_D_Or_135_Day_1;
Panel(23,:)=Panel_E_Or_135_Day_1;
Panel(24,:)= (Panel(19,:) + Panel(20,:) + Panel(21,:) + Panel(22,:) + Panel(23,:)) / 5;

Panel(25,:)=Panel_A_Or_180_Day_1;
Panel(26,:)=Panel_B_Or_180_Day_1;
Panel(27,:)=Panel_C_Or_180_Day_1;
Panel(28,:)=Panel_D_Or_180_Day_2;
Panel(29,:)=Panel_E_Or_180_Day_2;
Panel(30,:)= (Panel(25,:) + Panel(26,:) + Panel(27,:) + Panel(28,:) + Panel(29,:)) / 5;

%-------------Winter Data-------------------------%

Panel_AW_Or_0 = [2.312 2.649 2.649 2.669 2.664 2.567 2.652 2.318 2.319 2.030];
Panel_AW_Or_90 = [2.301 2.587 2.528 2.581 2.557 2.572 2.587 2.500 2.465 2.234];
Panel_AW_Or_180 = [2.160 2.389 2.254 2.314 2.412 2.461 2.279 2.640 2.607 2.212];

Panel_CW_Or_0 = [2.028 2.668 2.645 2.658 2.650 2.595 2.661 2.247 2.147 1.360];
Panel_CW_Or_90 = [1.974 2.620 2.579 2.619 2.610 2.620 2.616 2.515 2.442 1.714];
Panel_CW_Or_180 = [1.534 2.303 2.348 2.338 2.396 2.381 2.352 2.641 2.606 1.600];

Panel_DW_Or_45 = [2.484 2.713 2.774 2.726 2.743 2.622 2.744 2.464 2.447 2.268];
Panel_DW_Or_135 = [2.422 2.518 2.560 2.530 2.528 2.528 2.539 2.713 2.631 2.310];

Panel_EW_Or_45 = [2.373 2.716 2.740 2.722 2.735 2.640 2.736 2.463 2.390 1.560];
Panel_EW_Or_135 = [2.460 2.494 2.532 2.505 2.506 2.548 2.518 2.712 2.630 1.894];

PanelW(1,:)=Panel_AW_Or_0;
PanelW(2,:)=Panel_CW_Or_0;
PanelW(3,:) = (PanelW(1,:) + PanelW(2,:))/2;

PanelW(4,:)=Panel_DW_Or_45;
PanelW(5,:)=Panel_EW_Or_45;
PanelW(6,:) = (PanelW(4,:) + PanelW(5,:))/2;

PanelW(7,:)=Panel_AW_Or_90;
PanelW(8,:)=Panel_CW_Or_90;
PanelW(9,:) = (PanelW(7,:) + PanelW(8,:))/2;

PanelW(10,:)=Panel_DW_Or_135;
PanelW(11,:)=Panel_EW_Or_135;
PanelW(12,:) = (PanelW(10,:) + PanelW(11,:))/2;

PanelW(13,:)=Panel_AW_Or_180;
PanelW(14,:)=Panel_CW_Or_180;
PanelW(15,:) = (PanelW(13,:) + PanelW(14,:))/2;


[f,BigT,Orien] = Solar_Data_Reducer(Panel,Time,Fixed_Pitch,Full_Rot_Pitch);
[fW,BigTW,OrienW] = Solar_Data_Reducer(PanelW,TimeW,Fixed_Pitch,Full_Rot_Pitch);

BigTWW = zeros(15,181);
OrienWW = zeros(1,15);

for i = 1:1:10
    for j = 1:1:181
        BigTWW(i+2,j) = BigTW(i,j);
    end
    OrienWW(1,i+2)=OrienW(1,i);
end

Pitch = zeros(366,15);
for i = 1:1:15
    Pitch(1,i) = Orien(1,i);
    Pitch(366,i)= Orien(1,i);
    Pitch(190,i)=OrienWW(1,i);
end

%arbitrary 150 deg winter pitch
for i = 13:1:15
    OrienWW(i)=150;
    Pitch(190,i)=OrienWW(i);
end

Delta_Orien_1st_half = (OrienWW - Orien) / 189;

for i = 2:1:189
    Shift_Orien = Pitch(i-1,:) + Delta_Orien_1st_half;
    Pitch(i,:) = Shift_Orien;
end

Delta_Orien_2nd_half = (Orien - OrienWW) / 176;

for i = 191:1:365
    Shift_Orien = Pitch(i-1,:) + Delta_Orien_2nd_half;
    Pitch(i,:) = Shift_Orien;
end


%Yaw calcs
[Yaw] = Solar_Yaw_Calc(Time,days);
Yaw=Yaw';

Pitch(366,:)=[];
Yaw(366,:)=[];
days(366)=[];

for i = 1:1:length(days-1)
    for j=1:1:length(Time)
        nan_check = isnan(Yaw(i,j));
        nan_check = double(nan_check);
        if sum(nan_check) > 0
            Pitch(i,j)= NaN;
        end
    end
end
            

%----------------------------------------%

figure(1)
hold on
plot(f(1,:),'r','LineWidth',1.6)
plot(f(2,:),'g','LineWidth',1.6)
plot(f(3,:),'b','LineWidth',1.6)
plot(f(4,:),'c','LineWidth',1.6)
plot(f(5,:),'m','LineWidth',1.6)
plot(f(6,:),'k','LineWidth',1.8)

xlabel('Time (starting from 6 AM to 8 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 0^{\circ}')
legend('Panel A','Panel B','Panel C','Panel D','Panel E','Avg')

figure(2)
hold on
plot(f(7,:),'r','LineWidth',1.6)
plot(f(8,:),'g','LineWidth',1.6)
plot(f(9,:),'b','LineWidth',1.6)
plot(f(10,:),'c','LineWidth',1.6)
plot(f(11,:),'m','LineWidth',1.6)
plot(f(12,:),'k','LineWidth',1.8)

xlabel('Time (starting from 6 AM to 8 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 45^{\circ}')
legend('Panel A','Panel B','Panel C','Panel D','Panel E','Avg')

figure(3)
hold on
plot(f(13,:),'r','LineWidth',1.6)
plot(f(14,:),'g','LineWidth',1.6)
plot(f(15,:),'b','LineWidth',1.6)
plot(f(16,:),'c','LineWidth',1.6)
plot(f(17,:),'m','LineWidth',1.6)
plot(f(18,:),'k','LineWidth',1.8)

xlabel('Time (starting from 6 AM to 8 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 90^{\circ}')
legend('Panel A','Panel B','Panel C','Panel D','Panel E','Avg','Location','South')

figure(4)
hold on
plot(f(19,:),'r','LineWidth',1.6)
plot(f(20,:),'g','LineWidth',1.6)
plot(f(21,:),'b','LineWidth',1.6)
plot(f(22,:),'c','LineWidth',1.6)
plot(f(23,:),'m','LineWidth',1.6)
plot(f(24,:),'k','LineWidth',1.8)

xlabel('Time (starting from 6 AM to 8 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 135^{\circ}')
legend('Panel A','Panel B','Panel C','Panel D','Panel E','Avg','Location','SouthEast')

figure(5)
hold on

plot(f(25,:),'r','LineWidth',1.6)
plot(f(26,:),'g','LineWidth',1.6)
plot(f(27,:),'b','LineWidth',1.6)
plot(f(28,:),'c','LineWidth',1.6)
plot(f(29,:),'m','LineWidth',1.6)
plot(f(30,:),'k','LineWidth',1.8)

xlabel('Time (starting from 6 AM to 8 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 180^{\circ}')
legend('Panel A','Panel B','Panel C','Panel D','Panel E','Avg','Location','SouthEast')

figure(6)
surf(BigT)
colorbar
title('Solar Voltage Data Interpolated from Average Data at Specified Locations(Summer)')
xlabel('Pitch ({\circ})')
ylabel('Time (starting from 6 AM to 8 PM PST on July 14-15)')
zlabel('Voltage (V)')


A = [2,22,29,33,37,42,52,75,109,129,139,146,151,159,176];

figure(7)
hold on
plot(Time,A)
plot(Time,Orien,'r')
xlabel('Time(starting from 6 AM to 8 PM PST on July 14-15)')
ylabel('Pitch ({\circ})')
title('Optimal Pitch Ang. at each Hour')
legend('3rd degree fit','4th degree fit','Location','SouthEast')


figure(8)
hold on

plot(fW(1,:),'r','LineWidth',1.6)
plot(fW(2,:),'b','LineWidth',1.6)
plot(fW(3,:),'k','LineWidth',1.8)

xlabel('Time (starting from 8 AM to 5 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 0^{\circ}')
legend('Panel A','Panel C','Avg')

figure(9)
hold on

plot(fW(4,:),'r','LineWidth',1.6)
plot(fW(5,:),'b','LineWidth',1.6)
plot(fW(6,:),'k','LineWidth',1.8)

xlabel('Time (starting from 8 AM to 5 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 45^{\circ}')
legend('Panel D','Panel E','Avg')

figure(10)
hold on

plot(fW(7,:),'r','LineWidth',1.6)
plot(fW(8,:),'b','LineWidth',1.6)
plot(fW(9,:),'k','LineWidth',1.8)

xlabel('Time (starting from 8 AM to 5 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 90^{\circ}')
legend('Panel A','Panel C','Avg')

figure(11)
hold on

plot(fW(10,:),'r','LineWidth',1.6)
plot(fW(11,:),'b','LineWidth',1.6)
plot(fW(12,:),'k','LineWidth',1.8)

xlabel('Time (starting from 8 AM to 5 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 135^{\circ}')
legend('Panel D','Panel E','Avg')

figure(12)
hold on

plot(fW(13,:),'r','LineWidth',1.6)
plot(fW(14,:),'b','LineWidth',1.6)
plot(fW(15,:),'k','LineWidth',1.8)

xlabel('Time (starting from 8 AM to 5 PM PST)')
ylabel('Voltage')
title('Voltage Readings at 180^{\circ}')
legend('Panel A','Panel C','Avg')

figure(13)
surf(BigTWW)
colorbar
title('Solar Voltage Data Interpolated from Average Data at Specified Locations (Winter)')
xlabel('Full_Rot_Pitch ({\circ})')
ylabel('Time (starting from 8 AM to 5 PM PST on Jan 20)')
zlabel('Voltage (V)')

figure(14)
hold on
plot(Time,OrienWW)
xlabel('Time(starting from 8 AM to 5 PM PST on Jan 20)')
ylabel('Full Rot Pitch ({\circ})')
title('Optimal Full Rot Pitchs at each Time')
legend('4th degree fit','Location','SouthEast')

figure(15)
[C,h]=contour(Pitch)
clabel(C,h);


figure(16)
mesh(Pitch)
xlabel('Hour(6 AM to 8 PM PST)');
ylabel('Days')
zlabel('Pitch')
title('Optimal Pitch Angle Orientation for Solar Panel Throughout Year at Lat. 47\circ 16'' Long.-122\circ 8''')

figure(17)
mesh(Yaw)
title('Expected Solar Yaw Angles Throughout Year at Lat. 47\circ 16'' Long.-122\circ 8''')
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Days')
zlabel('Yaw')

figure(18)
mesh(Time,Yaw,Pitch)
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per Day / Master Lookup - Table')

cc= hsv(13);
j=1;

figure(19)
grid on
hold on
for i = 1:1:13
    plot3(Time,Yaw(j,:),Pitch(j,:),'color',cc(i,:))
    j=j+30;
end

xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per 30 Day Intervals / Reduced Size Lookup-Table')
legend('Jul. 15', 'Aug. 14', 'Sept. 13', 'Oct. 13', 'Nov. 12',...
    'Dec. 12', 'Jan. 11', 'Feb. 10', 'Mar. 12', 'Apr. 11',...
    'May 11', 'Jun. 10')

%sets 1 at Jan. 1
N_Pitch = zeros(365,15);
N_Yaw = zeros(365,15);

for i = 170:1:365
    for j =1:1:15
        N_Pitch(i-169,j) = Pitch(i,j);
        N_Yaw(i-169,j) = Yaw(i,j);
    end
end

for i = 1:1:169
    for j = 1:1:15
        N_Pitch(i+196,j) = Pitch(i,j);
        N_Yaw(i+196,j) = Yaw(i,j);
    end
end
% 
% %Reduce 90+ deg pitch
% 
% C_Pitch = N_Pitch;
for i=1:1:length(N_Pitch)
    for j=1:1:length(Time)
        if (N_Pitch(i,j) > 90)
            N_Pitch(i,j) = 180 - N_Pitch(i,j);
        end
    end
end
% 
% 
figure(20)
mesh(N_Yaw)
title('Expected Solar Yaw Angles Throughout Year at Lat. 47 \circ 16'' Long.-122\circ 8''')
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Days')
zlabel('Yaw')
axis([0 15  0 365 -50 250 ])

figure(21)
mesh(N_Pitch)
xlabel('Hour(6 AM to 8 PM PST)');
ylabel('Days')
zlabel('Pitch')
title('Optimal Pitch Angle Orientation for Solar Panel Throughout Year at Lat. 47\circ 16'' Long.-122\circ 8''')

figure(22)
mesh(Time,N_Yaw,N_Pitch)
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per Day / Master Lookup - Table')
cc= jet(13);
j=1;
% % 
figure(23)
grid on
hold on
plot3(Time,N_Yaw(1,:),N_Pitch(1,:),'color',cc(1,:))
plot3(Time,N_Yaw(21,:),N_Pitch(21,:),'color',cc(2,:),'LineWidth',3)

for i = 3:1:7
    plot3(Time,N_Yaw(j+60,:),N_Pitch(j+60,:),'color',cc(i,:))
    j=j+30;
end

plot3(Time,N_Yaw(197,:),N_Pitch(197,:),'color',cc(8,:),'LineWidth',3)
j=1;

for i = 9:1:13
    plot3(Time,N_Yaw(j+240,:),N_Pitch(j+240,:),'color',cc(i,:))
    j=j+30;
end

xlabel('Hour')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per 30 Day Intervals')
legend('Jan. 1', 'Jan. 20', 'Mar. 2', 'Apr. 1', 'May 1',...
    'May 31', 'Jun. 30', 'Jul. 15', 'Aug. 29', 'Sept. 29',...
    'Oct. 28', 'Nov. 27', 'Dec. 27')
% 
% 
% %Arduino Corrections
% 
 Ard_Pitch = round(N_Pitch);
 Ard_Yaw = round(N_Yaw);
% 
for i = 1:1:length(Ard_Yaw)
    for j = 1:1:length(Time)
        if (double(isnan(Ard_Pitch(i,j))) == 1 && j < 10)
            Ard_Pitch(i,j) = 0;
        end
        if (double(isnan(Ard_Pitch(i,j))) == 1 && j > 10)
            Ard_Pitch(i,j) = 180;
        end
        if ((double(isnan(Ard_Yaw(i,j))) == 1 && j < 10) || Ard_Yaw(i,j) < 0)
            Ard_Yaw(i,j) = 0;
        end
        if ((double(isnan(Ard_Yaw(i,j))) == 1 && j > 10) || Ard_Yaw(i,j) > 180)
            Ard_Yaw(i,j) = 180;
        end   
        if (Ard_Pitch(i,j) > 90)
            Ard_Pitch(i,j) = 180 - Ard_Pitch(i,j);
        end
    end
end



Ard_Yaw = 180 - Ard_Yaw;
%         
figure(23)
mesh(Ard_Yaw)
title('Servo Yaw Angles Throughout Year at Lat. 47 \circ 16'' Long.-122\circ 8''')
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Days')
zlabel('Yaw')
axis([0 15  0 365 0 180 ])
% 
figure(24)
mesh(Ard_Pitch)
xlabel('Hour(6 AM to 8 PM PST)');
ylabel('Days')
zlabel('Pitch')
title('Servo Pitch Angles Throughout Year at Lat. 47\circ 16'' Long.-122\circ 8''')
axis([0 15  0 365 0 90 ])
% 
figure(25)
mesh(Time,Ard_Yaw,Ard_Pitch)
xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per Day / Master Arduino Lookup - Table')
cc= jet(13);
j=1;

figure(26)
grid on
hold on
plot3(Time,Ard_Yaw(1,:),Ard_Pitch(1,:),'color',cc(1,:))
plot3(Time,Ard_Yaw(21,:),Ard_Pitch(21,:),'color',cc(2,:),'LineWidth',3)

for i = 3:1:7
    plot3(Time,Ard_Yaw(j+60,:),Ard_Pitch(j+60,:),'color',cc(i,:))
    j=j+30;
end

plot3(Time,Ard_Yaw(197,:),Ard_Pitch(197,:),'color',cc(8,:),'LineWidth',3)
j=1;

for i = 9:1:13
    plot3(Time,Ard_Yaw(j+240,:),Ard_Pitch(j+240,:),'color',cc(i,:))
    j=j+30;
end

xlabel('Hour(6 AM to 8 PM PST)')
ylabel('Yaw')
zlabel('Pitch')
title('Expected Pitch & Yaw Angles at Each Hour Per 30 Day Intervals / Reduced Size Arduino Lookup-Table')
legend('Jan. 1', 'Jan. 20', 'Mar. 2', 'Apr. 1', 'May 1',...
    'May 31', 'Jun. 30', 'Jul. 15', 'Aug. 29', 'Sept. 29',...
    'Oct. 28', 'Nov. 27', 'Dec. 27')