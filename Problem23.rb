#Problem23.rb




def generateAbundance(upper_limit)
	abundant_list = []
	for i in (1..upper_limit) do
		if (isAbundant?(i))
			abundant_list << i
		end
	end
	return abundant_list
end

def findDivisors(n)
	divisors = []
	for i in (1..(n/2)) do
		if ((n % i) == 0)
			divisors << i
		end
	end
	return divisors
end

def isAbundant?(n)
	divisors = findDivisors(n)
	if (divisors.inject{|sum, x| sum + x } > n)
		true
	else
		false
	end
end

def abundantSums()
	abundant_sums = []
end




#test findDivisors

#puts(findDivisors(28))

#test isAbundant?

#puts(isAbundant?(28))
#puts(isAbundant?(12))

puts(generateAbundance(1000))