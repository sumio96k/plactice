

def fibonacci(num)
  if num == 0
    return num
  elsif num == 1
    return num
  else
    fibo = 0
    fibo0 = 0
    fibo1 = 1

    i = 1
    while i < num
      fibo = fibo0 + fibo1

      fibo0 = fibo1
      fibo1 = fibo

      i += 1
    end

    return fibo
  end
end
# puts 123456.gcd(222)
# puts 99.lcm(307)
# puts fibonacci(90)

arry = [1,2,3,4,5,6,7,8,9,10]
even = []
arry.each do |ary|
  even << ary if ary % 2 == 0
end
p even

even_ary = arry.map{|a| a}
puts even_ary.instance_of?(Array)