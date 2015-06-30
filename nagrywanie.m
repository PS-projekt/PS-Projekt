function y=nagrywanie(~)

recObj = audiorecorder;
disp('Zagraj na gitarze jak najblizej mikrofonu - czas na uderzenie struny to 8 sekund.')
recordblocking(recObj, 8);
disp('Koniec nagrywania.');
play(recObj);
y = getaudiodata(recObj);
figure;
plot(y);
xlabel('Czas');
ylabel('Wartosc dzwieku wejsciowego');

end