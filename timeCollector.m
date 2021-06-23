function [times] = timeCollector (name)%Finds the times between all the R Wave Peaks
load(name)
timeBetweenRWavePeak = [0];
j = 1;

for i = 1:size(ecg,1)%Loops through all the data
    if(marker(i,1) == 3)%Identifies R Point
        timeBetweenRWavePeak(j) = time(1,i);%Records the time
        j = j+1;
    end
end       

times = timeBetweenRWavePeak;

end