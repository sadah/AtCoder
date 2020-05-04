require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, A, B, C, D = gets_i_list
S = gets.chomp

if C < D
  a_line = S.slice(A - 1, C - A + 1)
  b_line = S.slice(B - 1, D - B + 1)
  if b_line.include?("##")
    puts "No"
    exit
  elsif a_line.include?("##")
    puts "No"
    exit
  else
    puts "Yes"
  end
else
  ob_line = S.slice(B - 2, D - B + 3)
  a_line  = S.slice(A - 1, C - A + 1)
  b_line  = S.slice(B - 1, D - B + 1)
  if !ob_line.include?("...")
    puts "No"
    exit
  elsif a_line.include?("##")
    puts "No"
    exit
  elsif b_line.include?("##")
    puts "No"
    exit
  else
    puts "Yes"
  end
end
