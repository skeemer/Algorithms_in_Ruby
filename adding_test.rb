require './add.rb'
require './last.rb'

def time_diff_milli(start, finish)
   ((finish - start) * 1000.0).round(2)
end

num = [9]

puts "length,add,last"
(1..200).map do |i|
  j = i*100
  t1_1 = Time.now
  add(num,num)
  t1_2 = Time.now
  t2_1 = Time.now
  last(num,num)
  t2_2 = Time.now
  puts num.length.to_s + "," + time_diff_milli(t1_1,t1_2).to_s + "," + time_diff_milli(t2_1,t2_2).to_s
  (1..1000).map { |i| num.push(9) }
end