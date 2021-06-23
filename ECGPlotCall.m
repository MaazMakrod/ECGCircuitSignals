function ECGPlotCall(name)%Calls the plotting function ECGplot in sets of 3000 points to improve efficiency

load(name)

ending = floor(size(ecg,1)/3000);%Rounds down the ending repetition
y = 1;%Starting
x = 3000;%End

 for i = 1:ending
     ECGplot(ecg, marker, time, y, x)%Plots the points
     y = x;%New Starting
     x = x + 3000;%New Ending
 end
 
 x = x - 3000 + mod(size(ecg,1),3000);%Calculates the left over points
 ECGplot(ecg, marker, time, y, x)%Plots leftover points
end