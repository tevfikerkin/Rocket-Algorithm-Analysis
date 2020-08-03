function sensorInitialize(state)

switch state
    
    case 1
        
        msgbox('MPU6050 baþlatýlamadý');
        pause(2)
        close all hidden
        msgbox('Tekrar baþlatma deneniyor...');
        pause(2)
        close all hidden
        
        
        msgbox('BMP280 baþlatýlamadý');
        pause(2)
        close all hidden
        msgbox('Tekrar baþlatma deneniyor...');
        pause(2)
        close all hidden
        
        
        msgbox('Aðýrlýk Sensörü baþlatýlamadý');
        pause(2)
        close all hidden
        msgbox('Tekrar baþlatma deneniyor...');
        pause(2)
        close all hidden
        
        msgbox('Sensörler 3 defa yeniden baþlatma denemesinde baþlatýlamadý.');
        pause(4)
        close all hidden
        msgbox('Yedek uçuþ bilgisayarý aktifleþtirildi!');
        pause(2)
        close all hidden
        
        
    case 2
        
        msgbox('MPU6050 baþlatýldý');
        pause(2)
        close all hidden
        
        msgbox('BMP280 baþlatýldý');
        pause(2)
        close all hidden
        
        
        msgbox('Aðýrlýk Sensörü baþlatýldý');
        pause(2)
        close all hidden
        
        
        msgbox('Tüm Sensörler Baþlatýldý');
        pause(2)
        close all hidden
        
end


