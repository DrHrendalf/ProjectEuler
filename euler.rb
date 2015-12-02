def first(n)
	sum = 0
	(n+1).times do |i|
		if i % 3 == 0 or i % 5 == 0
			sum += i
		end
	end
	"Sum of all the multiples of 3 or 5 below " + n.to_s + ": " + sum.to_s
end

def second(n)
	a = 1
	b = 1
	c = 2
	sum = 0
	while(c < n) do
		c = a + b
		if c % 2 ==0
			sum += c
		end
		a = b
		b = c
	end
	"Sum of the even fibonacci numbers: " + sum.to_s
end

def third(n)
	res = "Prime factors of #{n}: "
	for i in 2..n
		is_prime = true
		for j in 2...i
			if i % j == 0
				is_prime = false
			end
		end
		if is_prime == true
			if n % i == 0
				res += i.to_s + ", "
			end
		end
	end
	res[0...-2]
end

puts first(1000)
puts second(4000000)
puts third(13195)