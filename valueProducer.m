function [value] = valueProducer(limit,increment, decrement) % limit �st limiti, artma at�� miktar�n�, azalma ise maksimumdan sonra azalma istenip istenmedi�ini ifade etmektedir.

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