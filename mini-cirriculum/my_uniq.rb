
def my_uniq(array)
  uniques = Array.new
  array.each do |item|
    unless uniques.include? item
      uniques.push(item)
    end
  end
  uniques
end

test_case = [1, 2, 1, 3, 3]
puts my_uniq(test_case).to_s == '[1, 2, 3]'
