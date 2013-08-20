def fibo_finder(n)
  arr = [0, 1]
	i = 0

	until i == n
		arr.push(arr[arr.length - 1] + arr[arr.length - 2])
		i = i + 1
	end

	return arr[n]
end

assert_equal 0, fibo_finder(0)
assert_equal 1, fibo_finder(1)
assert_equal 3, fibo_finder(4)
assert_equal 13, fibo_finder(7)
assert_equal 55, fibo_finder(10)