module MATH474
import RowEchelon

"""
    rref(A)
Compute the reduced row echelon form of the matrix A together with the
position of the pivots.
Since this algorithm is sensitive to numerical imprecision,
* Complex numbers are converted to ComplexF64
* Integer, Float16 and Float32 numbers are converted to Float64
* Rational are kept unchanged

```jldoctest
julia> rref([ 1  2 -1  -4;
              2  3 -1 -11;
             -2  0 -3  22])
([1.0 0.0 0.0 -8.0; 0.0 1.0 0.0 1.0; 0.0 0.0 1.0 -2.0], [1, 2, 3])

julia> rref([16  2  3  13;
              5 11 10   8;
              9  7  6  12;
              4 14 15   1])
([1.0 0.0 0.0 1.0; 0.0 1.0 0.0 2.9999999999999996; 0.0 0.0 1.0 -2.9999999999999996; 0.0 0.0 0.0 0.0], [1, 2, 3])

julia> rref([ 1  2  0   3;
              2  4  0   7])
([1.0 2.0 0.0 0.0; 0.0 0.0 0.0 1.0], [1, 4])
```
"""
function rref(A)
    return RowEchelon.rref_with_pivots(A)
end


export rref

end
