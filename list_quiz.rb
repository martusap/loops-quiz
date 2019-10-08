def three_even(list)
    i = 0
    (list.size).times do
        if list[i] % 2 == 0
            if list[i+1] % 2 != 0
                return false
            end
            if list[i+2] % 2== 0
                return true
            
            end
        end
        i += 1
    end
    return false
end

# puts three_even([2, 1, 3, 5])
# puts three_even([2, 4, 12, 5])
# puts three_even([2, 1, 4, 6])
# puts three_even([1, 4, 6, 4])
# puts three_even([])


def bigger_two(list1, list2)
    sum1 = list1[0] + list1[1]
    sum2 = list2[0] + list2[1]
    if sum1 > sum2
        return list1
    end
    if sum2 > sum1
        return list2
    end
    if sum1 == sum2
        return list1
    end
end

# puts bigger_two([1, 2], [3, 4])
# puts bigger_two([1, 7], [4, 4])


def series_up(num)
    total = num*(num + 1) / 2
    times = 1
    list = []
    num.times do
        list = [list, list, times]
        times += 1
    end
    puts list
end

puts series_up(1)
puts series_up(2)
puts series_up(3)
puts series_up(4)
