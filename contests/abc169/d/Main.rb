require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
N = gets_i

require 'prime'

factors = N.prime_division

dpp factors

if factors.empty?
  puts 0
else
  count = 0
  factors.each do |_, c|
    i = 1
    loop do
      break if c < i
      c = c - i
      count += 1
      i += 1
    end
  end
  puts count
end
