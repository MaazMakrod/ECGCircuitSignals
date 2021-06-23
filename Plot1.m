function Plot1 (name)%Plots only one ECG repetition, beginning with the first nonzero marked point 
load(name);
hold on
i = 2;
j=0;
x=1;
h = [0 0 0 0 0];

while(j < 2) %Counter to make sure that only one repetiton is plotted
    if(marker(i,1) == 1)
        h(x) = scatter(time(1,i), ecg(i,1), 10, 'r', 'filled', 'DisplayName', 'P Wave Peak');%Plots the point in red while giving it a name
        x=x+1;
    elseif(marker(i,1) == 2)
        h(x) = scatter(time(1,i), ecg(i,1), 10, 'b', 'filled', 'DisplayName', 'Q Point');%Plots the point in blue while giving it a name
        x=x+1;
    elseif(marker(i,1) == 3)
        h(x) = scatter(time(1,i), ecg(i,1), 10, 'g', 'filled', 'DisplayName', 'R Wave Peak');%Plots the point in green while giving it a name
        x=x+1;
    elseif(marker(i,1) == 4)
        j = j+1;%Adds one to the counter
        if(j<2)%Only plots if it hasn't already been plotted since the first non zero marked point in all the data sets is 4
            h(x) = scatter(time(1,i), ecg(i,1), 10, 'm', 'filled', 'DisplayName', 'S Point');%Plots the point in magenta while giving it a name
            x=x+1;
        end
    elseif(marker(i,1) == 5)
        h(x) = scatter(time(1,i), ecg(i,1), 10, 'c', 'filled', 'DisplayName', 'T Wave Peak');%Plots the point in cyan while giving it a name
        x=x+1;
    end
         
    plot([time(1,i-1), time(1,i)],[ecg(i-1,1), ecg(i,1)], 'k')%Plots a line connecting all the points (includes the unmarked 0 points)
    i=i+1;
end
legend(h(1:5));%Displays the legend with specified values
hold off    
end