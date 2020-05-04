require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力を文字列の配列で返す
def get_s_list()
  gets.chomp.split(" ")
end

s_list = gets_nsp_list
Q = gets_i

i = s_list.size - 1
is_reversed = false

Q.times do
  i += 1
  t, f, c = get_s_list
  if t == "1"
    is_reversed = !is_reversed
  elsif f == "1"
    if is_reversed
      s_list.push(c)
    else
      s_list.unshift(c)
    end
  elsif f == "2"
    if is_reversed
      s_list.unshift(c)
    else
      s_list.push(c)
    end
  end
end
s_list.reverse! if is_reversed
puts s_list.join