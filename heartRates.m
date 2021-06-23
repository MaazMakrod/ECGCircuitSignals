function [heartBeats] = heartRates (times)%Takes in a series of times and outputs the number of heart beats in every 60 second interval
j=60;
x=1;
t=0;
heartBeats = [0];

for i = 1:size(times,2)%Loops throught the times given
    if(times(1,i) >= (j-.1) && times(1,i) <= j)%Checks if the time is close to a sixty second interval
        heartBeats(x) = i-t;%Records the number of cycles that repeated
        t = i;
        x = x + 1;
        j= j + 60;        
    end
end       

end