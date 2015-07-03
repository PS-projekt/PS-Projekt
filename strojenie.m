function strojenie(dane, n, fs, f)

%czestotliwosci pustych strun gitarowych
E2 = 82.4069;
A2 = 110;
D3 = 146.832;
G3 = 195.998;
H3 = 246.942;
E4 = 329.628;
%minmalna i maksymalna przyjmowana czestotliwosc
minf=60;
maxf=350;

%granice pasm miedzy strunami
E2A2 = mean([E2 A2]);
A2D3 = mean([A2 D3]);
D3G3 = mean([D3 G3]);
G3H3 = mean([G3 H3]);
H3E4 = mean([H3 E4]);

%tworzenie prototypow filtrow 64000 elementowych dla kazdej struny
filtr_E2 = (1.*(f<E2A2).*(f>minf))';
filtr_A2 = (1.*(f>E2A2).*(f<A2D3))';
filtr_D3 = (1.*(f>A2D3).*(f<D3G3))';
filtr_G3 = (1.*(f>D3G3).*(f<G3H3))';
filtr_H3 = (1.*(f>G3H3).*(f<H3E4))';
filtr_E4 = (1.*(f>H3E4).*(f<maxf))';


%znajdziemy maksymalne wartosci modulu FFT dla filtrow strun
max_E2=max(filtr_E2.*dane);
max_A2=max(filtr_A2.*dane);
max_D3=max(filtr_D3.*dane);
max_G3=max(filtr_G3.*dane);
max_H3=max(filtr_H3.*dane);
max_E4=max(filtr_E4.*dane);

fprintf('Kolejnosc strun - od najgrubszej do najcienszej - E2, A2, D3, G3, H3, E4.\n');

%zakladamy, ze stroimy z dokladnoscia do 2Hz
%ze prazek ma byc wiekszy niz 500 dla E2 i wiekszy niz 1000 to nie jestem
%pewien, wyszlo mi z testow co sie dzieje empirycznych....
if(max_E2)> 500
    fprintf('Stroimy strune E2.\n');
    if(max_E2*fs/n < E2-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E2-2-(max_E2*fs/n));
        fprintf('\n');
    elseif(E2+2 < max_E2*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_E2*fs/n)-E2+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
elseif(max_A2)> 1000
    fprintf('Stroimy strune A2.\n');
    if(max_A2*fs/n < A2-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(A2-2-(max_A2*fs/n));
        fprintf('\n');
    elseif(A2+2 < max_A2*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_A2*fs/n)-A2+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(max_D3)> 1000
    fprintf('Stroimy strune D3.\n');
    if(max_D3*fs/n < D3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(D3-2-(max_D3*fs/n));
        fprintf('\n');
    elseif(D3+2 < max_D3*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_D3*fs/n)-D3+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
     elseif(max_G3)> 1000
    fprintf('Stroimy strune G3.\n');
    if(max_G3*fs/n < G3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(G3-2-(max_G3*fs/n));
        fprintf('\n');
    elseif(G3+2 < max_G3*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_G3*fs/n)-G3+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(max_H3)> 1000
    fprintf('Stroimy strune H3.\n');
    if(max_H3*fs/n < H3-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(H3-2-(max_H3*fs/n));
        fprintf('\n');
    elseif(H3+2 < max_H3*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_H3*fs/n)-H3+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
    
    elseif(max_E4)> 1000
    fprintf('Stroimy strune E4.\n');
    if(max_E4*fs/n < E4-2) 
        fprintf('Nastroj do gory, roznica wynosi:');
        disp(E4-2-(max_E4*fs/n));
        fprintf('\n');
    elseif(E4+2 < max_E4*fs/n)
            fprintf('Nastroj do dolu, roznica wynosi:');
            disp((max_E4*fs/n)-E4+2);
            fprintf('\n');
    else
        fprintf('Struna nastrojona!');
    end
end

end