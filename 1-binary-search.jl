#=  Note that the values in this program differ from the original by 1
    This is due to the fact that indexes in Julia start at 1 rather than 0
    like they do in Python.
    This also means the returned index is going to be one higher than the
    original algorithm.
    THIS IS CORRECT BEHAVIOUR
=#

function binary_search(list, item)
    low = 1
    high = length(list)

    while low ≤ high
        mid = (low + high) ÷ 2
        guess = list[mid]

        if guess == item
            return mid
        elseif guess > item
            high = mid - 1
        else
            low = mid + 1
        end
    end
    return nothing
end

my_list = [1, 3, 5, 7, 9]

show(binary_search(my_list, 3)) # => 2
show(binary_search(my_list, -1)) # => nothing
