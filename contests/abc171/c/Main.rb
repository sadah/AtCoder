require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i

s = n.to_s(26)

def toAz(source)
  if source < 1
    return ""
  end
  return toAz((source- 1) / 26) + char('A' + ((source- 1) % 26));
end

puts toAz(n)