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
  right_list << list2[index]
  left_list << list2[index+1]
  index+=2
end

right_list=right_list.sort
left_list=left_list.sort
sum=0

index=0
for i in 0..(right_list.length)
  num=right_list[index].to_i-left_list[index].to_i
  if num< 0
    sum-=num
  else
    sum+=num
  end
  index+=1
end
p sum