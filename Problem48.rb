


sum = 0
for i in (1..999) do
	sum += (i**i)%10000000000
end

puts(sum%10000000000)