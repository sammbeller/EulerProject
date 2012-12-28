def fast_exponent_rec(answer, base, exponent)
	if exponent == 0
		answer
	else
		if exponent%2 == 0
			fast_exponent_rec(answer, (base*base), (exponent / 2))
		else
			fast_exponent_rec(answer*base, base, exponent - 1)
		end
	end
end

def factorial_rec(n)
	if n == 0 
		1
	else
		n * factorial_rec(n-1)
	end
end



puts("The value of 2^3 is")
puts(fast_exponent_rec(1, 2, 3))
