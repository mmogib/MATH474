using MATH474
using Test

@testset "MATH474.jl" begin
    # Write your tests here.
    A = [-2 -3 3 3
        -2 -3 2 3
        1 -1 1 2]
    B = [1.0 0.0 0.0 0.6
        0.0 1.0 0.0 -1.4
        0.0 0.0 1.0 -0.0]
    P = [1; 2; 3]

    B1, P1 = rref(A)
    @test B1 ≈ B
    @test P1 ≈ P
end
