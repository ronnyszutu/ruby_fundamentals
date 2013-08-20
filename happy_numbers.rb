$seen = []

def happy_number?(number)
  arr1 = number.to_s.chars.map(&:to_i)
  arr2 = []

  while !arr1.none? do
      digit = arr1.pop
      arr2.push(digit*digit)
    end

    new_number = arr2.inject{|sum,x| sum + x }
    if  new_number == 1
      $seen = []
      return true
    else
    $seen.push(new_number)
  end

  if $seen.length - $seen.uniq.length == 0
    happy_number?(new_number)
  else
    $seen = []
    return false
  end 
end

puts happy_number?(7)
puts happy_number?(986543210)
puts happy_number?(189)
puts happy_number?(2)
puts happy_number?(10)
puts happy_number?(11)
puts happy_number?(13)
puts happy_number?(14)
puts happy_number?(19)
puts happy_number?(20)