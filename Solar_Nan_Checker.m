function [Mat] = Solar_Nan_Checker(Time,days,time_int,Mat, Mini_Mat)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

for i = 1:1:length(Time)
        nan_check = isnan(Mini_Mat(i,:));
        nan_check = double(nan_check);
        if (sum(nan_check) > 0)          
            nan_check = ~isnan(Mini_Mat(i,:));
            Mat_segment = Mini_Mat(i,:);
            Mat_segment = Mat_segment(nan_check);
            p(i,:) = polyfit(time_int(nan_check),Mat_segment,2);
        else
            p(i,:) = polyfit(time_int,Mini_Mat(i,:),2);
        end
end

Mat=Mat';
for i = 1:1:length(Time)
    for j = 1:1:length(days)
        Mat(i,j) = polyval(p(i,:),days(j));
    end
end



end

