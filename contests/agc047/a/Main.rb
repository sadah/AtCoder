require 'pp'
require 'bigdecimal'
require 'bigdecimal/util'

$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を数値で返却する
def gets_d()
  gets.chomp.to_d
end

n = gets_i
aslist = []
alist  = []
ints   = []
bds    = []

n.times do
  a = gets.chomp
  i, j = a.split(".")
  # p [i, j]
  if j.nil?
    ad = a.to_d
    ints.push ad
    alist.push ad
  else
    if j.size > 2
      if j[2..j.size].chars.uniq != ["0"]
        # どんな値を書けても整数にならない
        # 0.00x な感じ
      else
        ad = a.to_d - a.to_i
        bds.push ad
        alist.push ad
      end
    else
      ad = a.to_d - a.to_i
      bds.push ad
      alist.push ad
    end
  end
end

p alist
p ints.map(&:to_i)
p bds

count = ints.combination(2).size

as = alist.size

# 0.upto(as - 1) do |i|
#   1.upto(as - 1) do |j|
#     next if i == j
#     next if alist[i] - alist[j].to_i == 0

#   end
# end

# count = 0
# alist.combination(2).to_a.each do |x, y|
#   if (x * y) - (x * y).to_i == 0
#     p [x.to_f.to_s, y.to_f.to_s]
#     count += 1
#   end
# end

puts count
