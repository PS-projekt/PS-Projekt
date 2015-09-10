function [y, fs]=nagrywanie(~)

recObj = audiorecorder;
fprintf('Zagraj na gitarze jak najblizej mikrofonu - czas na uderzenie struny to 5 sekund.\n');
recordblocking(recObj, 5);
fprintf('Koniec nagrywania.\n');
y = getaudiodata(recObj);
fs=8000;
figure;
plot(y);
title('Wykres dzwieku wejsciowego');
xlabel('Numer probki');
ylabel('Wartosc dzwieku wejsciowego');

end
