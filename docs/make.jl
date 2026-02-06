# Docs build script for Documenter.jl
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))
using HelloWorld
using Documenter

makedocs(
    sitename = "HelloWorld",
    modules  = [HelloWorld],
    pages = ["Home" => "index.md"],
    output = joinpath("build", "dev"),
)

# We publish the entire `docs/build` directory from CI (peaceiris/actions-gh-pages),
# so write the dev build into `docs/build/dev` above. This creates a `/dev/` URL
# on the published site (e.g. https://angkunwu.github.io/HelloWorld/dev/).

