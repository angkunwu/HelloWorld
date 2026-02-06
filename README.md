# HelloWorld

[![CI](https://github.com/angkunwu/HelloWorld/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/angkunwu/HelloWorld/actions/workflows/ci.yml?query=branch%3Amain)
[![Docs](https://img.shields.io/badge/docs-dev-blue.svg)](https://angkunwu.github.io/HelloWorld/dev/)
[![Julia](https://img.shields.io/badge/julia-1.10-blue.svg)](https://julialang.org)

HelloWorld is a tiny example Julia package used to practice package structure, testing and documentation with Documenter.jl.

Installation
------------

Install the package (from GitHub):

```julia
using Pkg
Pkg.add(url="https://github.com/angkunwu/HelloWorld")
```

Development
-----------

Activate the project, install dependencies and run tests:

```bash
julia --project=. -e 'using Pkg; Pkg.instantiate(); Pkg.test()'
```

Build the docs locally:

```bash
julia -e 'using Pkg; Pkg.instantiate(); include("docs/make.jl")'
```

Usage
-----

```julia
using HelloWorld
MyFunction(3, 4) # 25
```

Contributing
------------

Contributions and suggestions welcome — open an issue or PR.
