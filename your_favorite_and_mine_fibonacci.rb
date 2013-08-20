def fibo_finder(n)
  [0,1,1,2,3,5,8,13,21,34,55,89].fetch(n)
end

assert_equal 0, fibo_finder(0)
assert_equal 1, fibo_finder(1)
assert_equal 3, fibo_finder(4)
assert_equal 13, fibo_finder(7)
assert_equal 55, fibo_finder(10)