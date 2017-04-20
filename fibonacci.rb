def fibs(n)
  arr = [0,1]
  (1..n-2).each do |i|
    arr << arr[-1] + arr[-2]
  end
  return "first #{n} numbers of the fibonacci sequence are: " + arr.to_s
end


def fibs_rec(n, arr=[0,1])
  return "invalid number" if n < 1
  return [0] if n == 1
  return arr[0,1] if n == 2
  if n > 2
    arr << arr[-2] + arr[-1]
    fibs_rec(n-1, arr)
  end
  return "first #{n} numbers of the fibonacci recursive sequence are: " + arr.to_s
end

#tests
p fibs(5) #[0, 1, 1, 2, 3]
p fibs_rec(5) #[0, 1, 1, 2, 3]
