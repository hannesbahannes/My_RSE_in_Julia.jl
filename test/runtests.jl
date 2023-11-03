using Test
using TrapezoidalRule

f(x) = 6x+4
@test integrate_trapezoidal(f, 0,1,1) == 7