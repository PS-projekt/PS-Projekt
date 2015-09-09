function strojenie(dane, n, fs, wybor)

%czestotliwosci pustych strun gitarowych
E2 = 82.4069;
A2 = 110;
D3 = 146.832;
G3 = 195.998;
H3 = 246.942;
E4 = 329.628;

x=1;
i=1;
while(x)
    if(dane(i,1)>250)
        x=0;
    else i=i+1;
    end
end

max_f=i;

fprintf('Znaleziona czestotliwosc wynosi:');
            disp(max_f*fs/n);
            fprintf('\n');
%zakladamy, ze stroimy z dokladnoscia do 5Hz
blad=5;
if(wybor==1)
    fprintf('Stroimy strune E2.\n');
    if(max_f*fs/n < E2-blad)
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E2-(max_f*fs/n));
        fprintf('\n');
    elseif(E2+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-E2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
elseif(wybor==2)
    fprintf('Stroimy strune A2.\n');
    if(max_f*fs/n < A2-blad) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(A2-(max_f*fs/n));
        fprintf('\n');
    elseif(A2+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-A2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
   elseif(wybor==3)
    fprintf('Stroimy strune D3.\n');
    if(max_f*fs/n < D3-blad) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(D3-(max_f*fs/n));
        fprintf('\n');
    elseif(D3+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-D3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(wybor==4)
    fprintf('Stroimy strune G3.\n');
    if(max_f*fs/n < G3-blad) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(G3-(max_f*fs/n));
        fprintf('\n');
    elseif(G3+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-G3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
   elseif(wybor==5)
    fprintf('Stroimy strune H3.\n');
    if(max_f*fs/n < H3-blad) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(H3-(max_f*fs/n));
        fprintf('\n');
    elseif(H3+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-H3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(wybor==6)
    fprintf('Stroimy strune E4.\n');
    if(max_f*fs/n < E4-blad) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E4-(max_f*fs/n));
        fprintf('\n');
    elseif(E4+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-E4);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    if(wybor==7)
    fprintf('Stroimy strune uzytkownika.\n OSTRZEZENIE: Ustawienie zbyt niskiej czestotliwosci moze spowodowac niepoprawne dzialanie stroika.\n Ustawienie zbyt duzej czestotliwosci oraz zbyt mocne naciagniecie struny moze doprowadzic do jej zniszczenia.\n Uzytkownik uzywa tej funkcji na wlasna odpowiedzialnosc.\n');
    f=input('Podaj czestotliwosc struny.\n');
    if(max_f*fs/n < f-blad)
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(f-(max_f*fs/n));
        fprintf('\n');
    elseif(f+blad < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-f);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
end

end
