a=File.read("input.txt")
a=a.split("\n")
list2=[]

for i in 0..(a.length-1) do
  list2+= a[i].split("   ")
end

right_list=[]
left_list=[]
index=0
for i in 0..(list2.length/2 -1) do
  right_list << list2[index+1]
  left_list << list2[index]
  index+=2
end

def contains(array ,con)
  i=0
  sum=0
  while i< array.length
    if array[i]==con
      sum+=1
    end
    i+=1
  end
  return sum
end

sum=0
left_list.each do |objekt|
  num=contains(right_list, objekt)
  sum+=objekt.to_i*num
end

p sum