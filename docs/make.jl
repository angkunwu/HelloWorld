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
if get(ENV, "GITHUB_ACTIONS", "") != ""
    # When running in GitHub Actions, let Documenter handle deployment so
    # it creates the versioned `dev/` folder for non-release builds.
    deploydocs(
        repo = "github.com/angkunwu/HelloWorld",
        branch = "gh-pages",
    )
else
    @info "Not running in GitHub Actions - skipping deploydocs() to avoid pushing from local builds"
end

