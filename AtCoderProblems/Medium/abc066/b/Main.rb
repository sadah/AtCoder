# 入力値を文字列で返す
def gets_s()
  gets.chomp
end

s = gets_s

while true
  s = s[0, s.size-2]
  left  = s[0, s.size/2]
  right = s[s.size/2, s.size]
  if left == right
    puts s.size
    exit
  end
end
