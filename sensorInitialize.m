function sensorInitialize(state)

switch state
    
    case 1
        
        msgbox('MPU6050 ba�lat�lamad�');
        pause(2)
        close all hidden
        msgbox('Tekrar ba�latma deneniyor...');
        pause(2)
        close all hidden
        
        
        msgbox('BMP280 ba�lat�lamad�');
        pause(2)
        close all hidden
        msgbox('Tekrar ba�latma deneniyor...');
        pause(2)
        close all hidden
        
        
        msgbox('A��rl�k Sens�r� ba�lat�lamad�');
        pause(2)
        close all hidden
        msgbox('Tekrar ba�latma deneniyor...');
        pause(2)
        close all hidden
        
        msgbox('Sens�rler 3 defa yeniden ba�latma denemesinde ba�lat�lamad�.');
        pause(4)
        close all hidden
        msgbox('Yedek u�u� bilgisayar� aktifle�tirildi!');
        pause(2)
        close all hidden
        
        
    case 2
        
        msgbox('MPU6050 ba�lat�ld�');
        pause(2)
        close all hidden
        
        msgbox('BMP280 ba�lat�ld�');
        pause(2)
        close all hidden
        
        
        msgbox('A��rl�k Sens�r� ba�lat�ld�');
        pause(2)
        close all hidden
        
        
        msgbox('T�m Sens�rler Ba�lat�ld�');
        pause(2)
        close all hidden
        
end


