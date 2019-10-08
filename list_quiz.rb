def three_even(list)
    i = 0
    (list.size).times do
        if list[i] % 2 == 0
            if list[i+1] % 2 == 0
                if list[i+2] % 2== 0
                    return true
                end
            end
        end
        i += 1
    end
    return false
end

puts three_even([2, 1, 3, 5])
puts three_even([2, 4, 12, 5])
puts three_even([1, 4, 6, 4])
puts three_even([])

