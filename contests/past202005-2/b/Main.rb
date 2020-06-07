require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M, Q = gets_i_list

attendees = Array.new(N).map{Array.new}
qs = Array.new(M,N)

Q.times do
  query = gets_i_list
  if query.first == 1
    n = query[1] - 1
    puts attendees[n].map {|i|qs[i]}.sum
  else
    n, m = query[1] - 1, query[2] - 1
    qs[m] -= 1
    answers = attendees[n]
    answers.push(m)
    answers.uniq!
    attendees[n] = answers
  end
end