def divisor(num)

divisible =

divisible_1000_less =

i = 1

while i <= num

divisible_or = num % i

if divisible_or == 0

puts i

divisible << i

if 10000 <= i && i <= 99999

divisible_1000_less << i

end

end

i += 1

end

puts "約数の総和は#{divisible.sum}です"

puts "1000以下の約数の和は#{divisible_1000_less.sum}です"

end



puts divisor(1629547920)