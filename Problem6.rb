
def square(n)
	(n*n)
end

def squares(limit)
	count = 1
	sum = 0
	while count <= limit do
		sum += square(count)
		count += 1
	end
	sum
end

def sums(limit)
	count = 1
	sum = 0
	while count <= limit do
		sum += count
		count +=1
	end
	square(sum)
end


puts(squares(100))
puts(sums(100))