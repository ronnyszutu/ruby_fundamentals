def prime_factors(num)
	factors = []
	temp1 = num

	until temp1 == 1
		if num%temp1 == 0
			factors.push(temp1)
			temp2 = temp1
			count = 0
			until temp2 == 0
				if temp1%temp2==0
					count+=1
				end
				temp2-=1
			end

			if count>2
				factors.pop
			end
		end
		temp1-=1
	end

	return factors.reverse!
end

#assert_equal prime_factors(102), [2, 3, 17]
#assert_equal prime_factors(896680), [2, 5, 29, 773]
#assert_equal prime_factors(42), [2, 3, 7]