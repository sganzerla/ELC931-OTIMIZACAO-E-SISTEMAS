from docplex.mp.model import Model

# criando modelo de otimização
opt_mod = Model(name = 'Linear Program')

# adicionando variáveis de decisão ao modelo
x1 = opt_mod.continuous_var(name = 'x1', lb = 0)
x2 = opt_mod.continuous_var(name = 'x2', lb = 0)
x3 = opt_mod.continuous_var(name = 'x3', lb = 0)
x4 = opt_mod.continuous_var(name = 'x4', lb = 0)
x5 = opt_mod.continuous_var(name = 'x5', lb = 0)
x6 = opt_mod.continuous_var(name = 'x6', lb = 0)

# adicionando as restrições
c1 = opt_mod.add_constraint(
    1*x1 + 0*x2 + 2*x3 + 2*x4 + 1*x5 + 2*x6 >=  9, ctname = 'c1')
c2 = opt_mod.add_constraint(
    0*x1 + 1*x2 + 3*x3 + 1*x4 + 3*x5 + 2*x6 >=  19, ctname = 'c2')

# definindo função objetivo
obj_fn = 35*x1 + 30*x2 + 60*x3 + 50*x4 + 27*x5 + 22*x6
opt_mod.set_objective('min', obj_fn)

opt_mod.print_information()

opt_mod.solve()

opt_mod.print_solution()