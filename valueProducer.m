function [value] = valueProducer(limit,increment, decrement) % limit üst limiti, artma atýþ miktarýný, azalma ise maksimumdan sonra azalma istenip istenmediðini ifade etmektedir.

x = 1;

for i=0:increment:limit
    
    value(x) = i;
    
    if i==limit 
        break;
    end
    
    x = x+1;
     
end

y = x;

while y<=limit && decrement == 1 
    
    value(y) = i;
    
    if y==0
        break
    end
    
    y=y+1;
    i=i-1;
end



end