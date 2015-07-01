clear all;
clc; 
x=1;
%czestotliwosci strun gitarowych
E2f = 82.4069;
A2f = 110;
D3f = 146.832;
G3f = 195.998;
B3f = 246.942;
E4f = 329.628;
while (x)
    clc;
fprintf('Program rozpoczyna dzialanie. Nastapi teraz nagranie dzwieku.\n');

    n=0;
    while (n==0)
    y=nagrywanie();
    n=isempty (input ('Nacisnij enter, by przejsc dalej, badz zero, jesli chcesz powtorzyc nagrywanie.\n'));
    end
fprintf('Program przeprowadzi teraz analize dzwieku.\n');

    
    
    
    
    
    
    
    
    
    
    
    
x=isempty (input ('Nacisnij enter, by powtorzyc dzialanie programu, badz zero, by wyjsc.\n')); 
end
