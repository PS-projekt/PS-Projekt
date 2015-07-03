clear all;
clc; 
x=1;

while (x)
    clc;
    fprintf('Kolejnosc strun - od najgrubszej do najcienszej - E2, A2, D3, G3, H3, E4.\n');

    fprintf('Ktora strune chcesz nastroic?\n');
    wybor=input ('Wybierz odpowiednio: E2 = 1, A2 = 2, D3 = 3, G3 = 4, H3 = 5, E4 = 6\n');
    fprintf('\n');
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
    strojenie(dane, n, fs, f, wybor);  
        
    x=isempty (input ('Nacisnij enter, by powtorzyc dzialanie programu, badz zero, by wyjsc.\n')); 
end
