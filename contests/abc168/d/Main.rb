require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 無向グラフ / コストを考慮しない
# { 0 => [0,1,2,3,4,], 1 => [0,1,2,3,4,], ...}
def createUndirectedGraph(from_to_list)
  graph = Hash.new{{}}
  from_to_list.each do |from, to|
    f_h, t_h = graph[from], graph[to]
    f_h[to] = 1
    t_h[from] = 1
    graph[from], graph[to] = f_h, t_h
  end
  graph
end

# http://obelisk.hatenablog.com/entry/2017/08/07/180132
def dijkstra(graph, start)
  h = graph.map {|x| [x[0], x[1].keys]}.to_h

  shortest = Hash.new(Float::INFINITY)    #デフォルトは充分大きな数
  pred = {}
  done = h.keys.map {|node| [node, false]}.to_h

  shortest[start] = 0

  loop do
    #確定していない中でスタート地点から最短のノードを探す（u）
    u = nil
    h.each_key.reject {|node| done[node]}.each do |node|
      u = node if !u or shortest[node] < shortest[u]
    end
    break unless u
    done[u] = true    #探されたuは確定

    #ノードuから行けるノードvまで、スタート地点からuを経由した方が短ければshortest[v]を更新する
    h[u].each do |v|
      if (a = shortest[u] + graph[u][v]) < shortest[v]
        shortest[v] = a
        pred[v] = u
      end
    end
  end

  [shortest, pred]
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
from_to_list = []

M.times do
  from_to_list.push(gets_i_list)
end

graph = createUndirectedGraph(from_to_list)
dpp graph

shortest, pred = dijkstra(graph,1)
dpp shortest
dpp pred

if shortest.keys.size == N
  puts "Yes"
  2.upto(N) do |i|
    puts pred[i]
  end
else
  puts "No"
end