require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
sc = []

if M == 0
  puts "100" if N == 3
  puts  "10" if N == 2
  puts   "0" if N == 1
  exit
end

M.times do
  sc.push gets_i_list
end

sc = sc.uniq.sort
s = sc.transpose[0]

if s != s.uniq || s.max > N
  puts "-1"
else
  sch = sc.to_h
  str = []
  if N == 3
    sch[1].nil? ? str.push(" ") : str.push(sch[1].to_s)
    sch[2].nil? ? str.push(" ") : str.push(sch[2].to_s)
    sch[3].nil? ? str.push(" ") : str.push(sch[3].to_s)
  elsif N == 2
    sch[1].nil? ? str.push(" ") : str.push(sch[1].to_s)
    sch[2].nil? ? str.push(" ") : str.push(sch[2].to_s)
  elsif N == 1
    sch[1].nil? ? str.push(" ") : str.push(sch[1].to_s)
  end

  if str[0] == " "
    str[0] = "1"
  end
  ans = str.join.gsub(" ", "0").to_i
  if ans.to_s.length == N
    puts ans
  else
    puts "-1"
  end
end
