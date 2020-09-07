require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

slist = gets_nsp_list

prev    = ""
current = ""
count = 0

slist.each do |c|
  current += c
  if prev != current
    count += 1
    prev = current
    current = ""
  end
end

puts count