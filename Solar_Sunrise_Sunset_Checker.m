function [Yaw_Mat] = Solar_Sunrise_Sunset_Checker(Yaw_Mat, day_length, SR_arr, SS_arr, Time)

%Sunrise / set checker
for i = 1:1:length(Time)
    for j = 1:1:length(day_length)
        if Yaw_Mat(i,j) < SR_arr(j) || Yaw_Mat(i,j) > SS_arr(j)
            Yaw_Mat(i,j) = NaN;
        end
    end
end

end

