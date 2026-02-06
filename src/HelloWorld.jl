module HelloWorld

"""
	HelloWorld

A tiny example package for practicing Julia package structure and documentation.
Exports `MyFunction`.
"""

export MyFunction

include("HWfuncs.jl")

end
