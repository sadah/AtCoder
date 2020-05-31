require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

# 無向グラフ
# { 0 => [0,1,2,3,4,], 1 => [0,1,2,3,4,], ...}
def createGraph(from_list, to_list)
  edges = (0...from_list.size).map{|i| [from_list[i], to_list[i]] }
  graph = Hash.new{[]}
  edges.each do |from, to|
    next if to == -1
    a = graph[from]
    b = graph[to]
    graph[from] = a.push(to).uniq.sort
    graph[to]   = b.push(from).uniq.sort
  end
  uedges = edges.map{|e| e.sort unless e.include?(-1)}.uniq.compact
  return graph, uedges
end

n, p_list = gets_n_and_i_list

from_list = [*1..n]
to_list = p_list

graph, uedges = createGraph(from_list, to_list)
dpp graph
dpp uedges
current_route = uedges.size

routes = []
p_list.each_with_index do |p, i|
  if p == -1
    c = uedges.count do |e|
      e.include?(i+1)
    end
    routes.push(current_route * (n - 1) + (n - c - 1))
  end
end
dpp routes
puts routes.inject(&:*)
