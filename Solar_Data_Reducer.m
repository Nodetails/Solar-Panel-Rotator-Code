function [f,BigT,Orien] = Solar_Data_Reducer(Panel,Time,Minor_Orientation,Orientation)

%Get panel size 
Pan_Size = size(Panel);
Size = Pan_Size(1);
Avgs = zeros(1,5);

%get Polyval data for each segment
j=1;
Fit = 4;
for i = 1:1:Size 
    p(j,:) = polyfit(Time,Panel(i,:),Fit);
    f(j,:) = polyval(p(j,:),Time);
    j=j+1;
end

%get location of average data and set up little T
for i = 1:1:5
    Avgs(i) = i*(Size / 5);
    LitlT(:,i) = f(Avgs(i),:);
end


for i = 1:1:length(Time)
    P(i,:) = polyfit(Minor_Orientation,LitlT(i,:),Fit);
    BigT(i,:) = polyval(P(i,:),Orientation);
end

BigT = transpose(BigT);
MaxPoints = max(BigT);

Derp = zeros(1,length(Time));
Orien = zeros(1,length(Time));
for i = 1:1:length(Time)
    j=1;
    while Derp(i) ~= MaxPoints(i) && j <= 181 %finds max at the correct angle
        Derp(i) = BigT(j,i);
        j = j+1;
    end
    Orien(i) = j;
end

BigT = BigT';

end

