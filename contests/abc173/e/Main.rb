require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, k = gets_i_list
alist = gets_i_list

# plist = alist.select do |a|
#   a >= 0
# end
# plist.sort!.reverse!
# pcount = plist.size

# nlist = alist.select do |a|
#   a < 0
# end
# nlist.sort!
# ncount = nlist.size

# if k == 1
#   puts alist.max
# elsif k == 2
#   ans = []

#   if pcount >= 2
#     ans.push plist[0] * plist[1]
#   end

#   if ncount >= 2
#     ans.push nlist[0] * nlist[1]
#   end

#   ans.push plist.min * nlist.max

#   pp ans
#   puts ans.max
# else

# end