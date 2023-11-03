module TrapezoidalRule

export integrate_trapezoidal


"""
    integrate_trapezoidal(f::Function, a, b, N)

Integrate a Function f from a to b numerically with the trapezoidal formula with N intersections.
"""
function integrate_trapezoidal(f::Function, a, b, N)
    delta_x = (b-a)/N
    x_i = range(a, b, length = N+1)
    result = 0
    for k in 1:N
        result += (f(x_i[k]) + f(x_i[k+1]))/2 * delta_x
    end
    return result
end

# function square(x)
#     return x^2
# end
# integrate_trapezoidal(square(x), 0,1,100)

end