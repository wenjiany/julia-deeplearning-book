using Pkg
Pkg.activate(@__DIR__)
Pkg.status()
using CondaPkg
CondaPkg.withenv() do
    Pkg.resolve()
    Pkg.instantiate()
    @info "Render book"
    Pkg.build("IJulia") # build IJulia to the right version.
    run(`quarto render`)
end