function find_smallest(arr)
    smallest = arr[1]
    smallest_index = 1

    for i in 1:length(arr)
        if arr[i] < smallest
            smallest = arr[i]
            smallest_index = i
        end
    end
    return smallest_index
end

function selection_sort!(arr)
    newarr = []
    for i in 1:length(arr)
        smallest = find_smallest(arr)
        append!(newarr, arr[smallest])
        deleteat!(arr, smallest)
    end
    return newarr
end

show(selection_sort!([5, 3, 6, 2, 10]))
