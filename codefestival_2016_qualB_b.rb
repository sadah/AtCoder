# 入力値を文字の配列で返す
def gets_s_list()
  gets.chomp.split("")
end

# 空白区切の入力値を数値の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, A, B = gets_i_list
S = gets_s_list

# 国内の学生は、現在予選の通過が確定した参加者が
# A + B 人に満たなければ、予選を通過する
#
# 海外の学生は、現在予選の通過が確定した参加者が
# A + B人に満たず、
# さらに海外の学生の中での順位がB位以内なら、予選を通過する
a_total = 0
b_total = 0
S.each do |s|
  if (a_total + b_total) < A + B
    if s == "a"
      a_total += 1
      puts "Yes"
    elsif s == "b"
      if b_total < B
        b_total += 1
        puts "Yes"
      else
        puts "No"
      end
    else
      puts "No"
    end
  else
    puts "No"
  end
end
