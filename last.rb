#This will add two numbers with the same number of digits

def add(n1,n2)
  sum = []
  carry = 0
  position = n1.length
  
  while ((position-=1) >= 0) do
    total = n1[position] + n2[position] + carry
    if (total>9) then
      sum[position+1] = total-10
      carry=1
    else
      sum[position+1] = total
      carry=0
    end
  end
  sum
end

puts add([2,3,4],[5,3,1])
