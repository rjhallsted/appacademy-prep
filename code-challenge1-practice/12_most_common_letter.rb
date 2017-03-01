# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  letters = Array.new
  counts = Array.new
  string.split('').each do |x|
    unless letters.include? x
      letters.push x
      counts.push 1
    else
      index = letters.index x
      counts[index] += 1
    end
  end

  highest = counts.max
  most_common = letters[counts.index(highest)]
  [most_common, highest]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
