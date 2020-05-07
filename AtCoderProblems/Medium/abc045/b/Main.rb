require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp.chars
end

sa_list = gets_s
sb_list = gets_s
sc_list = gets_s

card = sa_list.shift
while true
  case card
  when "a"
    if sa_list.empty?
      puts "A"
      exit
    end
    card = sa_list.shift
  when "b"
    if sb_list.empty?
      puts "B"
      exit
    end
    card = sb_list.shift
  when "c"
    if sc_list.empty?
      puts "C"
      exit
    end
    card = sc_list.shift
  end
end