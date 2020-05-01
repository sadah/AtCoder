require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

def max(a, b)
  return a > b ? a : b
end

s, t = gets_s, gets_s

dp = Array.new(s.size + 1){Array.new(t.size + 1, 0)}
s.size.times do |i|
  t.size.times do |j|
    if s[i] == t[j]
      dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][j] + 1)
    end
    dp[i+1][j+1] = max(dp[i+1][j+1], dp[i+1][j])
    dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][j+1])
  end
end

res = ""
i = s.size
j = t.size
while i > 0 && j > 0 do
  if dp[i][j] == dp[i-1][j]
    i -= 1
  elsif dp[i][j] == dp[i][j-1]
    j -= 1
  else
    res = s[i-1] + res;
    i -= 1
    j -= 1
  end
end
puts res