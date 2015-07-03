clear all;
clc; 
x=1;

while (x)
    clc;
fprintf('Program rozpoczyna dzialanie. Nastapi teraz nagranie dzwieku.\n');

    p=0;
    while (p==0)
    [y, fs]=nagrywanie();
    p=isempty (input ('Nacisnij enter, by przejsc dalej, badz zero, jesli chcesz powtorzyc nagrywanie.\n'));
    end
fprintf('Program przeprowadzi teraz analize dzwieku.\n');

[y, f, n]=okienkowanie(y ,fs);

dane=fourier(y);
figure;
plot(f,dane); 
title('Transformata Fouriera (modul) dzwieku wejsciowego');
xlabel('Czestotliwosc (Hz)');
    
%teraz trzeba bedzie powiazac filtry strun z FFT, znalezc maksymalne prazki
%dla jakich sa czestotliwosci..
strojenie(dane, n, fs, f);  
    
x=isempty (input ('Nacisnij enter, by powtorzyc dzialanie programu, badz zero, by wyjsc.\n')); 
end
