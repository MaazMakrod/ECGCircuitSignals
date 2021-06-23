function ECGplot (ecg, marker, time, start, last)%Takes in the ecg values, marker, time, starting graphing point and last graphing point
hold on

for i = linspace(start+1,last,(last-start)) %Loops from the indicated starting point to the indicated ending point
    if(marker(i,1) == 1)%If it is the peak of a P Wave
        scatter(time(1,i), ecg(i,1), 10, 'r', 'filled')%Plot a red dot at the location
    elseif(marker(i,1) == 2)%If it is a Q Point
        scatter(time(1,i), ecg(i,1), 10, 'b', 'filled')%Plot a blue dot at the location
    elseif(marker(i,1) == 3)%If it is the peak of a R Wave
        scatter(time(1,i), ecg(i,1), 10, 'g', 'filled')%Plot a green dot at the location
    elseif(marker(i,1) == 4)%If it is a S point
        scatter(time(1,i), ecg(i,1), 10, 'm', 'filled')%Plot a magenta dot at the location
    elseif(marker(i,1) == 5)%If it is the peak of a T Wave
        scatter(time(1,i), ecg(i,1), 10, 'c', 'filled')%Plot a cyan dot at the location
    end
     
    plot([time(1,i-1), time(1,i)],[ecg(i-1,1), ecg(i,1)], 'k')%Plot a black line between the two points indicated
end
hold off    
end

