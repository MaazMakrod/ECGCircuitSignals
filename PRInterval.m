function [timeGap] = PRInterval (name)%Approximates each PR Interval
load(name)

j = 1;
x = 0;%First Boolean
h = 0;%Second Boolean
t1 = 0;
t2 = 0;
difference = 1;
i=1;

while(i < size(ecg,1))%Loops until i exceeds the number of points
   if(marker(i,1) == 5)%Checks if the peak of a t wave has occured to begin checking points
       x = 1;%Now true
       i = i + 5;%Skips 5 points to avoid confusion in the code will remove credibility as the points are irrelevant to the PR Interval
   end
   if(x == 1 && ecg(i+1,1) - ecg(i,1) > 0.001)%Checks if true and if the difference between the points is >0.001, this is an approximation for the beginning of the PR Interval
       t1 = time(1,i);%Records the time
       x=0;%Now False
   end
   if(marker(i,1) == 1)%Checks if we have reached the peak of the PR Interval
       h = 1;%True
       i = i + 5;%Skips some points to avoid confusion in code, does not remove crediility as in the amount of points skipped is small
       difference = abs(ecg(i+1,1) - ecg(i,1)); %Calculates the abosolute difference between two points
   end
   if(h == 1 && abs(ecg(i+1,1) - ecg(i,1)) <= difference)%True adn the difference is less than the original difference
       t2 = time(1,i);%A new approximation for the ending of the PR interval is set
       difference = abs(ecg(i+1,1) - ecg(i,1));%A new difference is created
   end
   if(h == 1 && marker(i,1) == 2)%Is we reached the Q Point
       x = 0;%False
       h=0;%False
       difference = 1;%Difference is reset
       timeGap(j) = t2-t1;%The time between the ending and start is calculated
       j=j+1;
   end
   i= i +1;
end
end