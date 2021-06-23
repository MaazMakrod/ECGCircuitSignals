function textAdder (name)%Adds text to the plot labelling the indicated points as creating a legend is difficult for the large graphs

load(name);
revMarker = flipud(marker);%Flips the marker vector
revTime = flipud(transpose(time));%Flips and transposes the time vector
revEcg = flipud(ecg);%Flips the ecg vector

hold on

for i = 1:size(ecg,1)%Loops through the points of the data and breaks when the point first occurence of the point is found
    if(revMarker(i,1)==1)
        txt = '\leftarrow P Wave Peak';%Creates the text
        text(revTime(i,1),revEcg(i,1),txt, 'FontSize', 7, 'FontName', 'Times New Roman');%Adds the text to the plot at size 7 times new roman
        break;
    end
end

for i = 1:size(ecg,1)%Loops through the points of the data and breaks when the point first occurence of the point is found
    if(revMarker(i,1)==2)        
        txt = '\leftarrow Q Point';%Creates the text
        text(revTime(i,1),revEcg(i,1),txt, 'FontSize', 7, 'FontName', 'Times New Roman');%Adds the text to the plot at size 7 times new roman
        break;
    end
end

for i = 1:size(ecg,1)%Loops through the points of the data and breaks when the point first occurence of the point is found
    if(revMarker(i,1)==3)
        txt = '\leftarrow R Wave Peak';%Creates the text
        text(revTime(i,1),revEcg(i,1),txt, 'FontSize', 7, 'FontName', 'Times New Roman');%Adds the text to the plot at size 7 times new roman
        break;
    end
end

for i = 1:size(ecg,1)%Loops through the points of the data and breaks when the point first occurence of the point is found
    if(revMarker(i,1)==4)
        txt = '\leftarrow S Point';%Creates the text
        text(revTime(i,1),revEcg(i,1),txt, 'FontSize', 7, 'FontName', 'Times New Roman');%Adds the text to the plot at size 7 times new roman
        break;
    end
end

for i = 1:size(ecg,1)%Loops through the points of the data and breaks when the point first occurence of the point is found
    if(revMarker(i,1)==5)      
        txt = '\leftarrow T Wave Peak';%Creates the text
        text(revTime(i,1),revEcg(i,1),txt, 'FontSize', 7, 'FontName', 'Times New Roman');%Adds the text to the plot at size 7 times new roman
        break;
    end
end
hold off
end