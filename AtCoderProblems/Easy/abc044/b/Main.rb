require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

w_list = gets_nsp_list

w_count_h = w_list.group_by(&:itself).map{|k,v| [k, v.count]}.to_h

dpp w_count_h

w_count_h.each do |k, v|
  if v.odd?
    puts "No"
    exit
  end
end

puts "Yes"