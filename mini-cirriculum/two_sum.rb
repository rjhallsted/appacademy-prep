def two_sum array
  if array.size > 1
    combos = Array.new
    for i in 0..array.size-2
      for j in i+1..array.size-1
        if array[i] + array[j] == 0
          return true
        end
      end
    end
  end
  false
end

test1 = [0,1,3,4,5]
test2 = [0,2,-2]
test3 = [3]
test4 = [0, 3, 4]
test5 = [0,0,1]

puts two_sum(test1) == false
puts two_sum(test2) == true
puts two_sum(test3) == false
puts two_sum(test4) == false
puts two_sum(test5) == true
