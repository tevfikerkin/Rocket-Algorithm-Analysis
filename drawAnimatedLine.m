function drawAnimatedLine(x,state)


h = animatedline('Color','r','LineStyle',':','LineWidth',3);
axis([0 1754 0 3000]);
x = linspace(1,1754,3000);

y = -0.00359990902019.*x.^2 + 6.29540655653.*x + 1.35922530767;

switch state
    case 3
        title('NEO AEROSPACE TEAM Bütünleþik Sistem Testi-1');
    case 4
        title({'NEO AEROSPACE TEAM Bütünleþik Sistem Testi-2',' ', 'MPU6050 Sensöründe Sorun Olmasý Durumunda', 'Yedek Uçuþ Bilgisayarýna Geçiþin Saðlanmasý'});
        
    case 5
        title({'NEO AEROSPACE TEAM Bütünleþik Sistem Testi-3',' ', 'BMP280 Sensöründe Sorun Olmasý Durumunda', 'Yedek Uçuþ Bilgisayarýna Geçiþin Saðlanmasý'});
        
    case 6
        title({'NEO AEROSPACE TEAM Bütünleþik Sistem Testi-4',' ', 'Faydalý Yük Durum Sensöründe Sorun Olmasý Durumunda', 'Yedek Uçuþ Bilgisayarýna Geçiþin Saðlanmasý'});
end

grid on;
xlabel('Yatay Mesafe(m)');
ylabel('Ýrtifa(m)');
previousY = 0;
control = [0 0];
set(gcf, 'Position', get(0, 'Screensize'));

while state == 3
    for i=1:length(x)
        
        addpoints(h,x(i),y(i));
        pause(0.002);
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktasýna Ulaþýldý  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox);
            messageBox = msgbox('Faydalý Yük Ayrýldý ');
            pause(2);
            close(messageBox);
            messageBox = msgbox('Sürükleme Paraþütü Açýldý');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Paraþüt Açýldý');
            hold on
            plot(x(i),y(i),'k*','MarkerSize',10)  % marking the 10th data point of x and y
            
            hold on
            pause(2);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('Ýniþ gerçekleþti');
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
            
            messageBox = msgbox('MPU6050''den Veri Alýnamýyor');
            pause(3);
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek Uçuþ Bilgisayarýna Geçiþ Yapýldý');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktasýna Ulaþýldý  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydalý Yük Ayrýldý ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('Sürükleme Paraþütü Açýldý');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Paraþüt Açýldý');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('Ýniþ gerçekleþti');
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
            
            messageBox = msgbox('BMP280''den Veri Alýnamýyor');
            pause(3);
            
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek Uçuþ Bilgisayarýna Geçiþ Yapýldý');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktasýna Ulaþýldý  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydalý Yük Ayrýldý ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('Sürükleme Paraþütü Açýldý');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Paraþüt Açýldý');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('Ýniþ gerçekleþti');
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
            
            messageBox = msgbox('Faydalý Yük Durum Sensöründen Veri Alýnamýyor');
            pause(3);
            
            hold on
            plot(x(i),y(i),'b*','MarkerSize',10);  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Yedek Uçuþ Bilgisayarýna Geçiþ Yapýldý');
            pause(2);
            close(messageBox)
            control(2) = 1;
            
        end
        
        if previousY - y(i) >= 0 && control(1) == 0
            messageBox = msgbox('2754 metrede Tepe Noktasýna Ulaþýldý  ');
            pause(3);
            hold on
            plot(x(i),y(i),'g*','MarkerSize',10)  % marking the 10th data point of x and y
            hold on
            close(messageBox)
            messageBox = msgbox('Faydalý Yük Ayrýldý ');
            pause(2);
            close(messageBox)
            messageBox = msgbox('Sürükleme Paraþütü Açýldý');
            pause(2);
            close(messageBox);
            control(1) = 1;
            
        elseif y(i)<=600 && i>1500 && control(1) == 1
            messageBox =  msgbox('593.18 metrede Ana Paraþüt Açýldý');
            pause(3);
            close(messageBox)
            control(1) = 2;
            
        elseif i==length(x)
            messageBox = msgbox('Ýniþ gerçekleþti');
            pause(2);
            close(messageBox);
            state='end';
            close all hidden
            
        end
        
        previousY = y(i);
    end
    
end