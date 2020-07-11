require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i

def calc(x, y, z)
  x**2 + y**2 + z**2 + x * y + y * z + z * x
end

x, y, z = 1,1,1

ans = []

x.upto(100) do |xi|
  y.upto(100) do |yi|
    z.upto(100) do |zi|
      ans.push(calc(xi, yi, zi))
    end
  end
end
ans.sort

ha = ans.sort.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

1.upto(n) do |i|
  if ha[i]
    puts ha[i]
  else
    puts 0
  end
end