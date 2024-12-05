list = File.read("input.txt")

list_1=[]
list_2=[]

def funktion_1(array)
  chek_list=array.split(" ")
  poped=true
  chek_list.each_with_index do |objekt, i|
    if objekt.to_i>chek_list[i+1].to_i && poped || objekt.to_i==chek_list[i+1].to_i && chek_list[i+1]!=nil
      chek_list.delete_at(i+1)
      poped=false
    end
  end
  chek_list.each_with_index do |objekt, i|
    if chek_list[i].to_i-chek_list[i+1].to_i<0 && chek_list[i].to_i-chek_list[i+1].to_i>-4 || chek_list[i+1]==nil
    else
      return false
    end
  end
  return true
end

def funktion_2(array)
  chek_list=array.split(" ")
  poped=true
  
  chek_list.each_with_index do |objekt, i|
    if objekt.to_i<chek_list[i+1].to_i && poped || objekt.to_i==chek_list[i+1].to_i && chek_list[i+1]!=nil
      chek_list.delete_at(i+1)
      poped=false
    end
  end
  chek_list.each_with_index do |objekt, i|
    if chek_list[i].to_i-chek_list[i+1].to_i>0 && chek_list[i].to_i-chek_list[i+1].to_i<4 || chek_list[i+1]==nil
    else
      return false
    end
  end
  return true
end
    
input=list.split("\n")
safe=0
input.each do |objekt|
  if funktion_1(objekt) || funktion_2(objekt)
    safe+=1
    list_1<<objekt
  end
end
p safe