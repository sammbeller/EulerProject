

def is_palindrome?(n)
	target = n.to_s
	((target[0]==target[5]) && (target[1]==target[4]) && (target[2]==target[3]))
end

def solve()
	999.downto(100) do |y|
		999.downto(y) do |x|
			puts("\n\n\nCurrent y value:")
			puts (y)
			puts("Current x value:")
			puts(x)
			if is_palindrome?(x*y)
				return (x*y)
			end
		end
	end
end


puts (solve())