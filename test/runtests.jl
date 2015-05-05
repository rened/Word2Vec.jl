using Word2Vec
using FactCheck

facts("Einfache tests") do
    @fact wordcooc("a") => 0*eye(1)
    @fact wordcooc("a a") => 2*eye(1)
end
