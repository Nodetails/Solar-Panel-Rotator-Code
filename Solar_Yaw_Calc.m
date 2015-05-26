function [Yaw] = Solar_Yaw_Calc(Time,days)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


time_int = [1 95 190 277 366];

Yaw=zeros(length(Time),length(days));

Yaw(:,time_int(1))=[-34 -21	-11	4	16	35	56	81	106	131	155	168	182	195	204];
Yaw(:,time_int(2))=[-99 -99	18	30	43	60	73	91	107	122	137	151	162	999	999];
Yaw(:,time_int(3))=[-99 -99	32	43	58	71	84	98	111	126	140	151	999 999 999];
Yaw(:,time_int(4))=[-99 -13	3	16	27	47	66	85	103	123	146	162	173	186	196];

Sunrise = zeros(1,366);
Sunset = zeros(1,366);

Sunrise(1) = -34;
Sunrise(95) = 18;
Sunrise(190) = 32;
Sunrise(277) = -13;
Sunrise(366) = Sunrise(1);

Sunset(1) = 204;
Sunset(95) = 162;
Sunset(190) = 151;
Sunset(277) = 196;
Sunset(366) = Sunset(1);

for i = 1:1:length(time_int)
    Mini_SR(i) = Sunrise(time_int(i));
    Mini_SS(i) = Sunset(time_int(i));
end

p = polyfit(time_int,Mini_SR,2);
fsr = polyval(p,days);

p = polyfit(time_int,Mini_SS,2);
fss = polyval(p,days);

%To make the summer solstice endpoints match

dummy1 = fsr(1);
dummy2 = fss(1);
fsr(1)=fsr(366);
fss(1)=fss(366);

CHECK = 2;
CONV = 0.01;
k=1;
fssr=fsr;
fsss=fss;

while(CHECK > CONV)
    fssr_old = fssr;
    fsss_old = fsss;
    p=polyfit(days,fssr_old,2);
    fssr = polyval(p,days);
    p=polyfit(days,fsss_old,2);
    fsss = polyval(p,days);
    CHECK = sum(abs(fssr - fssr_old) + abs(fsss - fsss_old));
    fssr(1) = fsr(1);
    fsss(1) = fss(1);
    k=k+1;
end



Yaw=Yaw';
Mini_Yaw = [Yaw(time_int(1),:); Yaw(time_int(2),:); Yaw(time_int(3),:); Yaw(time_int(4),:); Yaw(time_int(1),:)]'; 
[Mini_Yaw] = Solar_Sunrise_Sunset_Checker(Mini_Yaw, time_int, Mini_SR, Mini_SS,Time);
[Yaw] = Solar_Nan_Checker(Time,days,time_int,Yaw, Mini_Yaw);


Yaw_avg = (Yaw(:,1) + Yaw(:,366)) / 2;

Yaw(:,1) = Yaw_avg;
Yaw(:,366) = Yaw_avg;

CHECK = 2;
CONV = 0.1;

while (CHECK > CONV)
    CHECK = 0;
    for i = 1:1:15        
        Yaw_old = Yaw(i,:);
        p = polyfit(days,Yaw(i,:),2);
        Yaw(i,:) = polyval(p,days);
        CHECK = CHECK + sum(abs(Yaw(i,:) - Yaw_old));
        Yaw(:,1) = Yaw_avg;
        Yaw(:,366) = Yaw_avg;
        k=k+1;
    end
end


% fsr(1)=dummy1;
% fss(1)=dummy2;
% 
% figure
% hold on
% plot(days,fsr);
% plot(days,fssr,'r');
% xlabel('Days');
% ylabel('Yaw (\deg)')
% title('Sunrise Comparison with Derived vs Pulled Polynomial')
% legend('Derived','Pulled')
% 
% figure
% hold on
% plot(days,fss);
% plot(days,fsss,'r');
% xlabel('Days');
% ylabel('Yaw (\deg)')
% title('Sunset Comparison with Derived vs Pulled Polynomial')
% legend('Derived','Pulled')


%Sunrise / set checker
[Yaw] = Solar_Sunrise_Sunset_Checker(Yaw, days, fssr, fsss,Time);

end

