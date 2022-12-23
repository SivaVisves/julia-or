
#----------Using GLPK-------------------
# using JuMP, GLPK

# m = Model(GLPK.Optimizer)

# @variable(m, 0 <= x <= 2 )
# @variable(m, 0 <= y <= 30 )

# @objective(m, Max, 5x + 3*y )

# @constraint(m, 1x + 5y <= 3.0 )

# JuMP.optimize!(m)
# println("Objective value: ", JuMP.objective_value(m))
# println("x = ", JuMP.value(x))
# println("y = ", JuMP.value(y))

#----------Using Gurobi-------------------

# using JuMP, Gurobi
# m = Model(Gurobi.Optimizer)
# @variable(m, x <= 5)
# @variable(m, y <= 45)
# @objective(m, Max, x + y)
# @constraint(m, 50x + 24y <= 2400)
# @constraint(m, 30x + 33y <= 2100)

# JuMP.optimize!(m)
# println("Objective value: ", JuMP.objective_value(m))
# println("x = ", JuMP.value(x))
# println("y = ", JuMP.value(y))


#----------Using CPLEX-------------------

using JuMP, CPLEX
m = Model(CPLEX.Optimizer)
@variable(m, x <= 5)
@variable(m, y <= 45)
@objective(m, Max, x + y)
@constraint(m, 50x + 24y <= 2400)
@constraint(m, 30x + 33y <= 2100)

JuMP.optimize!(m)
println("Objective value: ", JuMP.objective_value(m))
println("x = ", JuMP.value(x))
println("y = ", JuMP.value(y))