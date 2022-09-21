require "prime"

def sum_divisors(n)
  Prime.prime_division(n).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
end


def _divisors(primes, k)
  Enumerator.new do |y|
    if primes.size == k
      y << 1
    else
      p, e = primes[k]
      _divisors(primes, k + 1).each {|d|
        (e + 1).times {|e1|
          y << p ** e1 * d
        }
      }
    end
  end
end

def divisors(n)
  _divisors(Prime.prime_division(n), 0).to_a.sort
end

num = divisors(1629547920)

num.each do
  if num < 10000
    num.delete
  elsif num > 99999
    num.delete
  else
    sum_num = num + num
    return sum_num
  end
end

puts sum_num