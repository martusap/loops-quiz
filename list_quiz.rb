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

puts three_even([2, 1, 3, 5])
puts three_even([2, 4, 12, 5])
puts three_even([2, 1, 4, 6])
puts three_even([1, 4, 6, 4])
puts three_even([])


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

puts print bigger_two([1, 2], [3, 4])
puts print bigger_two([1, 7], [4, 4])


def series_up(num)
    length = num*(num + 1) / 2
    time = 1
    reset = 3
    list = [1] #added a 1 into the starting list because I know that all will start with a 1. It takes a step off
    (length - 1).times do #changed it to length-1.times because we need the list to be length size but its already got one integer in it.
        list.push time #changed to a push command so that there is not a bunch of brackets inbettween all the numbers
        time += 1
        if time == reset # added the reset so that it doesnt keep going up and it repeats the pattern. See more expination below @
            time = 1
            reset += 1
        end
    end
    print list
end

puts print series_up(1)
puts print series_up(2)
puts print series_up(3)
puts print series_up(4)

#@ Without the reset the 'time' variable would keep going up and you would end up with the first two right.
# Because there is already a 1, when the total length is three you dont have to reset anything. It adds the
#second 1 counts up and adds the 2. But when you go higher and need to start at 1 after the first 2 is placed
#you have to reset it before the 3 is placed. it will get to the list being 1,1,2 then the reset will say, that we
#need to start over before a 3 can be placed, but the next time we go through we want the three to be added 
#to the list, so as part of the reset we need to increase the reset point by one.