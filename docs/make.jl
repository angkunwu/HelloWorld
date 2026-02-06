# Docs build script for Documenter.jl
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))
using HelloWorld
using Documenter

makedocs(
    sitename = "HelloWorld",
    modules  = [HelloWorld],
    pages = ["Home" => "index.md"],
)

deploydocs(
    repo = "github.com/angkunwu/HelloWorld",
)

