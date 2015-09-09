function [dane, f, n]=wstepna_analiza(y ,fs)

n = length(y)-1;
f = 0:fs/n:fs;
dane = y(:,1);
end
