require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
# S = gets_s

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

chars = ('a'..'z').to_a
s_list = gets_nsp_list

if s_list.size != 26
  s_list.push((chars - s_list).first)
  puts s_list.join
else
  candidates = [s_list.last]
  25.downto(1) do |i|
    if s_list[i] < s_list[i-1]
      candidates.push(s_list[i-1])
    else
      break
    end
  end
  if candidates.size == 26
    puts -1
  else
    ans = (s_list - candidates)
    last = ans.pop
    candidates.sort.each do |c|
      if c > last
        last = c
        break
      end
    end
    ans.push(last)
    puts ans.join
  end
end
