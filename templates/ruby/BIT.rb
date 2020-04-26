# Binary Indexed Tree
# https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A7%E3%83%8B%E3%83%83%E3%82%AF%E6%9C%A8
# https://ikatakos.com/pot/programming_algorithm/dynamic_programming/inversion
# https://scrapbox.io/pocala-kyopro/%E8%BB%A2%E5%80%92%E6%95%B0
# http://hos.ac/slides/20140319_bit.pdf

a_list = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

@bit = Array.new(a_list.size + 1, 0)
def sum(i)
  s = 0
  while i > 0 do
    s += @bit[i]
    i -= i & -i
  end
  return s
end

def add(i, x)
  while i <= @bit.size - 1 do
    @bit[i] += x
    i += i & -i
  end
end

inversion_number = 0
a_list.each_with_index do |a, i|
  add(a, 1)
  inversion_number += i + 1 - sum(a)
end
