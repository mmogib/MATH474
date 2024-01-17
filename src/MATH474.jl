module MATH474

# Write your package code here.

function addit(x, y)
    x + y
end

function addone(x)
    addit(1, x)
end

export addit, addone

end
