function pi_nks(limit::Core.Int64)::Core.Float64
    pi = 3.0
    s = 1
    for i in range(start=2, stop=limit, step=2)
        pi += (s * 4 / (i * (i + 1) * (i + 2)))
        s = s * (-1)
    end
    return pi
end

function pi_gls(limit::Core.Int64)::Core.Float64
    pi = 0.0
    s = 1
    for i in range(start=1, stop=limit, step=2)
        pi += (s * (4 / i))
        s = s * (-1)
    end
    return pi
end

const limit = 100
println("NKS: $(round.(pi_nks(limit), digits=13))")
println("GLS: $(round.(pi_gls(limit), digits=13))")
