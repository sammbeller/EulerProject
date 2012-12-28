

def combine (n, r) 
	fact(n)/(fact(r)*fact(n-r))
end

def fact(n)
	if n == 0
		1
	else 
		n * fact(n-1)
	end
end

def check(n)
	if (n%2 == 0)
		ret_val = check_rec(n, n/2)
		2 * ret_val
	else
		ret_val = check_rec(n, (n/2) + 1)
		2 * ret_val - 1
	end
end

def check_rec(n,r)
	if combine(n,r) <= 1000000
		0
	else
		1 + check_rec(n, r - 1)
	end
end

def solve(low, high)
	solution = 0
	while low <= high
		solution += check(low)
		low += 1
	end
	solution
end

puts(2 * check_rec(25, 13) - 1)

puts (solve(23, 100))
