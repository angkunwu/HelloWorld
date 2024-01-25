using HelloWorld
using Test

@testset "HelloWorld.jl" begin
    # Write your tests here.
    @test MyFunction(1,2) == 5
end
