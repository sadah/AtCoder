require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, m = gets_i_list
ac, wa = 0, 0
acs = {}
was = {}
m.times do
  pn, s = gets.chomp.split(" ")
  if acs[pn].nil?
    if s == "AC"
      ac += 1
      wa += was[pn].to_i
      acs[pn] = true
    elsif s == "WA"
      was[pn] = was[pn].to_i + 1
    end
  end
end

puts [ac, wa].join(" ")