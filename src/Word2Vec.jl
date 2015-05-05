module Word2Vec

export wordcooc

using FunctionalData

function wordcooc(input)
    a = @p filter input not*isequal '.' | filter not*isequal ',' | split 
    words = @p unique a | sort
    b = @p map a x->fst(find(x.==words))
        C = zeros(len(words),len(words))
    for i = 1:len(b)
        for j = i+(-5:5)
            if j != i && j>0 && j <= len(b)
                C[b[i],b[j]] += 1
            end
        end
    end
    C
end

end # module
