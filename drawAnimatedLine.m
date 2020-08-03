function drawAnimatedLine(x,state)


h = animatedline('Color','r','LineStyle',':','LineWidth',3);
axis([0 1754 0 3000]);
x = linspace(1,1754,3000);

y = -0.00359990902019.*x.^2 + 6.29540655653.*x + 1.35922530767;

switch state
    case 3
        title('NEO AEROSPACE TEAM B�t�nle�ik Sistem Testi-1');
    case 4
        title({'NEO AEROSPACE TEAM B�t�nle�ik Sistem Testi-2',' ', 'MPU6050 Sens�r�nde Sorun Olmas� Durumunda', 'Yedek U�u� Bilgisayar�na Ge�i�in Sa�lanmas�'});
        
    case 5
        title({'NEO AEROSPACE TEAM B�t�nle�ik Sistem Testi-3',' ', 'BMP280 Sens�r�nde Sorun Olmas� Durumunda', 'Yedek U�u� Bilgisayar�na Ge�i�in Sa�lanmas�'});
        
    case 6
        title({'NEO AEROSPACE TEAM B�t�nle�ik Sistem Testi-4',' ', 'Faydal� Y�k Durum Sens�r�nde Sorun Olmas� Durumunda', 'Yedek U�u� Bilgisayar�na Ge�i�in Sa�lanmas�'});
end

grid on;
xlabel('Yatay Mesafe(m)');
ylabel('�rtifa(m)');
previousY = 0;
control = [0 0];
set(gcf, 'Position', get(0, 'Screensize'));

while state == 3
    for i=1:length(x)
        
        addpoints(h,x(i),y(i));
        pause(0.002);
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktas�na Ula��ld�  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox);
            messageBox = msgbox('Faydal� Y�k Ayr�ld� ');
            pause(2);
            close(messageBox);
            messageBox = msgbox('S�r�kleme Para��t� A��ld�');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Para��t A��ld�');
            hold on
            plot(x(i),y(i),'k*','MarkerSize',10)  % marking the 10th data point of x and y
            
            hold on
            pause(2);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('�ni� ger�ekle�ti');
            pause(2);
            close(messageBox);
            state='end';
            close all hidden
        end
        
        previousY = y(i);
    end
    
end

while state == 4
    for i=1:length(x)
        
        addpoints(h,x(i),y(i));
        pause(0.002)
        
        if y(i)>=1700 && control(2) == 0 && control(1) == 0
            
            messageBox = msgbox('MPU6050''den Veri Al�nam�yor');
            pause(3);
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek U�u� Bilgisayar�na Ge�i� Yap�ld�');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktas�na Ula��ld�  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydal� Y�k Ayr�ld� ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('S�r�kleme Para��t� A��ld�');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Para��t A��ld�');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('�ni� ger�ekle�ti');
            pause(2);
            close(messageBox);
            state='end';
            close all hidden
            
        end
        
        previousY = y(i);
    end
    
end

while state == 5
    for i=1:length(x)
        
        addpoints(h,x(i),y(i));
        pause(0.002)
        
        if y(i)<1400 && control(2) == 0 && control(1) ~= 0
            
            messageBox = msgbox('BMP280''den Veri Al�nam�yor');
            pause(3);
            
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek U�u� Bilgisayar�na Ge�i� Yap�ld�');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktas�na Ula��ld�  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydal� Y�k Ayr�ld� ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('S�r�kleme Para��t� A��ld�');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Para��t A��ld�');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('�ni� ger�ekle�ti');
            pause(2);
            close(messageBox);
            state='end';
            close all hidden
            
        end
        
        previousY = y(i);
    end
    
end

while state == 6
    for i=1:length(x)
        
        addpoints(h,x(i),y(i));
        pause(0.002)
        
        if y(i)<700 && control(2) == 0 && control(1) == 0
            
            messageBox = msgbox('Faydal� Y�k Durum Sens�r�nden Veri Al�nam�yor');
            pause(3);
            
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek U�u� Bilgisayar�na Ge�i� Yap�ld�');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktas�na Ula��ld�  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydal� Y�k Ayr�ld� ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('S�r�kleme Para��t� A��ld�');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Para��t A��ld�');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('�ni� ger�ekle�ti');
            pause(2);
            close(messageBox);
            state='end';
            close all hidden
            
        end
        
        previousY = y(i);
    end
    
end