# Inside make.jl
push!(LOAD_PATH,"../src/")
using HelloWorld
using Documenter
makedocs(
         sitename = "HelloWorld",
         modules  = [HelloWorld],
         pages=[
                "Home" => "index.md"
               ])
deploydocs(;
    repo="github.com/angkunwu/HelloWorld",
)

