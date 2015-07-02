function [dane, f]=okienkowanie(y)

fs=8000;
n = length(y)-1;
f = 0:fs/n:fs;
%okna Blackmana-Harrisa i Hanninga minimalizuja przecieki widma, mogace
%spowodowac niepoprawne dzialanie programu
bl_har = blackmanharris(n+1); 
han = hanning(n+1); 
dane = y(:,1).*bl_har.*han;
figure;
plot(dane);
title('Sygnal po okienkowaniu');
xlabel('Numer probki');
ylabel('Wartosc dzwieku wejsciowego');
end