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

%zakladamy, ze stroimy z dokladnoscia do 2Hz
%ze prazek ma byc wiekszy niz 500 dla E2 i wiekszy niz 1000 to nie jestem
%pewien, wyszlo mi z testow co sie dzieje empirycznych....
if(wybor==1)
    fprintf('Stroimy strune E2.\n');
    if(max_f*fs/n < E2-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E2-(max_f*fs/n));
        fprintf('\n');
    elseif(E2+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-E2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
elseif(wybor==2)
    fprintf('Stroimy strune A2.\n');
    if(max_f*fs/n < A2-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(A2-(max_f*fs/n));
        fprintf('\n');
    elseif(A2+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-A2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
   elseif(wybor==3)
    fprintf('Stroimy strune D3.\n');
    if(max_f*fs/n < D3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(D3-(max_f*fs/n));
        fprintf('\n');
    elseif(D3+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-D3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(wybor==4)
    fprintf('Stroimy strune G3.\n');
    if(max_f*fs/n < G3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(G3-(max_f*fs/n));
        fprintf('\n');
    elseif(G3+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-G3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
   elseif(wybor==5)
    fprintf('Stroimy strune H3.\n');
    if(max_f*fs/n < H3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(H3-(max_f*fs/n));
        fprintf('\n');
    elseif(H3+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-H3);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(wybor==6)
    fprintf('Stroimy strune E4.\n');
    if(max_f*fs/n < E4-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E4-(max_f*fs/n));
        fprintf('\n');
    elseif(E4+2 < max_f*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_f*fs/n)-E4);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
end

end
