function [Gx, Gy]=CalculoGanadora(W,Patron)
Gx = 1;
Gy = 1;
distOptima = inf;
[~, numFilas, numCol] = size(W);

for i = 1:numFilas
    for j = 1:numCol
        dist = norm(W(:, i, j) - Patron, 2);
        if (dist < distOptima)
            Gx = i;
            Gy = j;
            distOptima = dist;
        end
    end
end
