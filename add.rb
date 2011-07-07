#This will add two numbers with the same number of digits

def add(n1,n2)
  sum = []
  carry = 0
  position = n1.length-1
  
  while (position >= 0) do
    total = n1[position] + n2[position] + carry
    sum[position+1] = total%10
    if (total>9) then
      carry=1
    else
      carry=0
    end
    position -= 1
  end
  sum
end