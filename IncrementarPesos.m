function W=IncrementarPesos(W,Patron,Vecindad,eta)
[~, numFilas, numCol] = size(W);

for i = 1:numFilas
    for j = 1:numCol
        W(:, i, j) = W(:, i, j) + eta * Vecindad(i, j) * (Patron - W(:, i, j));
    end
end