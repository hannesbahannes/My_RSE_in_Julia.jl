function integrate_trapezoidal(f::Function, a, b, N)
    delta_x = (b-a)/N
    x_i = range(a, b, length = N+1)
    for k in 1:N+1
        println(f(x_i[k]))
    end
end

function square(x)
    return x^2
end
integrate_trapezoidal(square, 1,5,4)