require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

S = gets_s
s_list = S.chars

if S.size == 1
  puts "YES"
elsif S.size == 2
  if S == "aa" || S == "bb" || S == "cc"
    puts "NO"
  else
    puts "YES"
  end
elsif S.size == 3
  if S.chars.sort.join == "abc"
    puts "YES"
  else
    puts "NO"
  end
else
  s_count_hash = s_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h
  counts = s_count_hash.values
  if counts.size < 3
    puts "NO"
    exit
  end
  min = counts.min
  counts.each do |c|
    if c - min > 1
      puts "NO"
      exit
    end
  end
  puts "YES"
end
