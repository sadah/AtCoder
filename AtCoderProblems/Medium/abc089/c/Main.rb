require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

N = gets_i
name_hash = Hash.new(0)

N.times do
  s = gets_s[0]
  march = %w(M A R C H)
  if march.include?(s)
    name_hash[s] += 1
  end
end

if name_hash.keys.size < 3
  puts 0
else
  total = 0
  name_hash.keys.combination(3).each do |a, b, c|
    total += name_hash[a] * name_hash[b] * name_hash[c]
  end
  puts total
end
