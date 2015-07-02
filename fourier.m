function dane=fourier(y)
z = abs(fft(y));
%dzialamy na jednokolumnowej macierzy danych zgodnie z prototypami filtrow
%dla poszczegolnych strun
dane = z(:,1); 
end