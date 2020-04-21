require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

ABC = gets_i_list.sort

appeared = []
count = 0
c_abc = ABC
while true
  if appeared.include?(c_abc)
    puts -1
    exit
  end
  c_abc.each do |e|
    if e.odd?
      puts count
      exit
    end
  end
  count += 1
  appeared.push(c_abc)
  c_abc = [
    c_abc[0]/2 + c_abc[1]/2,
    c_abc[1]/2 + c_abc[2]/2,
    c_abc[0]/2 + c_abc[2]/2,
  ].sort
end
