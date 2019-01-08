N = 3
a = [10, 20, 30]
b = [40, 50, 60]
c = [70, 80, 90]

N = gets.to_i
a = []
b = []
c = []

N.times do
  gets.split(' ').each_with_index do |e, i|
    a << e.to_i if i == 0
    b << e.to_i if i == 1
    c << e.to_i if i == 2
  end
end

d = [[a[0], b[0], c[0]]]

(1...N).each do |i|
  d << [[d[i-1][1], d[i-1][2]].max + a[i], [d[i-1][0], d[i-1][2]].max + b[i], [d[i-1][0], d[i-1][1]].max + c[i]]
end

puts d[-1].max
