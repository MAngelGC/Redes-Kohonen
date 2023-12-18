function Vecindad=FuncionVecindadConDistancia(IndGan,W,Indices)
[~, numFilas, numCol] = size(W);
Vecindad = zeros(numFilas, numCol);

for i = 1:numFilas
    for j = 1:numCol
        if (IndGan(1) == 1 && IndGan(2) == j)
            Vecindad(i, j) = 1;
        else
            if (sum(abs(IndGan - Indices(:, i, j)) == 1))
                Vecindad(i, j) = exp(-norm(W(:, i, j) - Indices(:, i, j), 2));
            end
        end
    end
end
