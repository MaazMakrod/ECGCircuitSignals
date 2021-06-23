function [averageTime] = averagePRInterval (timeGap)

sum = 0;
for i = 1:size(timeGap,2)
    sum = sum + timeGap(1,i);
end

averageTime = sum/size(timeGap,2);
end