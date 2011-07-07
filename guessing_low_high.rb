# This will run iterations on a guessing game

def turns(n,low,high)
  turns = 0
  
  while (high-low >= 1) do
    turns+=1
    mid = (low+high)/2.to_i
    if (mid==n) then
      return turns
    elsif (mid<n)
      low = mid+1
    else
      high = mid-1
    end
  end
  return turns+1
end

puts "Guess:Turns"
(1..10).map { |i| puts i.to_s + ":" + turns(i,1,10).to_s}