# Docs build script for Documenter.jl
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))
using HelloWorld
using Documenter

makedocs(
    sitename = "HelloWorld",
    modules  = [HelloWorld],
    pages = ["Home" => "index.md"],
)

# Deployment is handled by the GitHub Actions workflow which uploads
# `docs/build` to GitHub Pages. Avoid calling `deploydocs` here so local
# builds don't attempt to push.

