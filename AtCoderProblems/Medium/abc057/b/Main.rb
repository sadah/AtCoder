require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list

students = []
N.times do
  students.push(gets_i_list)
end

checkpoints = []
M.times do
  checkpoints.push(gets_i_list)
end

students.each do |s|
  sx, sy = s
  min_point    = nil
  min_distance = nil
  checkpoints.each_with_index do |c, i|
    cx, cy = c
    distance = (sx - cx).abs + (sy - cy).abs
    if min_point.nil?
      min_point = i + 1
      min_distance = distance
    elsif !min_point.nil? && min_distance > distance
      min_point = i + 1
      min_distance = distance
    end
  end
  puts min_point
end
