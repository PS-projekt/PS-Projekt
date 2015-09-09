function dane=fourier(y)
z = abs(fft(y));
%dzialamy na jednokolumnowej macierzy danych
dane = z(:,1); 
end