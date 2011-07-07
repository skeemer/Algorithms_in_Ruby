#This will add two numbers with the same number of digits

def add(in1,in2)
  n1 = in1.to_s
  n2 = in2.to_s
  
  sum = ""
  carry = 0
  position = n1.length-1
  
  while (position >= 0) do
    total = n1[position].to_i + n2[position].to_i + carry
    sum = (total%10).to_s + sum
    (total>9) ? carry=1 : carry=0
    position = position-1
  end
  sum.to_i
end

puts add(234,531)