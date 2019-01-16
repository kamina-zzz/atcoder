#N, W = [6, 15]
#puts N, W
#
#inputs = [
#[6, 5],
#[5, 6],
#[6, 4],
#[6, 6],
#[3, 5],
#[7, 2]
#]

#N, W = [3, 8]
#puts N, W
#
#input = [
#[3, 30],
#[4, 50],
#[5, 60]
#]

N, W = gets.split.map(&:to_i)

d = [[0, 0]]

#inputs.each do |input|
#  puts "d: #{d.inspect}"
#  w, v = input
#  puts "w: #{w}, v: #{v}"

(0..(N-1)).each do
  w, v = gets.split.map(&:to_i)

  next if w > W

  (0..(d.size - 1)).each do |i|
    d << [d[i][0] + w, d[i][1] + v] if d[i][0] + w <= W
  end

  d.sort!

  idx = 1
  while idx < d.size do
    if d[idx-1][1] >= d[idx][1]
      d.delete_at(idx)
    else
      idx += 1
    end
  end
end

puts d[-1][1]
