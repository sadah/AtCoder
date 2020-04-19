# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

# 空白区切の入力を文字列の配列で返す
def get_s_list()
  gets.chomp.split(" ")
end

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 空白区切の入力を数値(実数)の配列で返却する
def gets_f_list()
  gets.chomp.split(" ").map(&:to_f)
end

# Yes or Noを返却する
def yes_no(bool, y = "Yes", n = "No")
  bool ? y : n
end

# n件読み込んだ結果を数値の配列で返却する
def gets_n_iarray
  n = gets.chomp.to_i
  array = []
  n.times do
    array.push(gets.chomp.to_i)
  end
  return n, array
end
