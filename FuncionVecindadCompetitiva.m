function Vecindad=FuncionVecindadCompetitiva(IndGan,W,Indices)
[~, numFilas, numCol] = size(W);
Vecindad = zeros(numFilas, numCol);

for i = 1:numFilas
    for j = 1:numCol
        if (IndGan(1) == 1 && IndGan(2) == j)
            Vecindad(i, j) = 1;
        end
    end
end
