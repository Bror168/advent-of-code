list = File.read("input.txt")

def funktion_1(array)
  curent_safe=false
  chek_list=array.split(" ")
  chek_list.each_with_index do |objekt, i|
    if chek_list[i].to_i-chek_list[i+1].to_i<0 && chek_list[i].to_i-chek_list[i+1].to_i>-4 || chek_list[i+1]==nil
      curent_safe=true
    else
      curent_safe=false
      return curent_safe
    end
  end
  return curent_safe
end

def funktion_2(array)
  curent_safe=false
  chek_list=array.split(" ")
  chek_list.each_with_index do |objekt, i|
    if chek_list[i].to_i-chek_list[i+1].to_i>0 && chek_list[i].to_i-chek_list[i+1].to_i<4 || chek_list[i+1]==nil
      curent_safe=true
    else
      curent_safe=false
      return curent_safe
    end
  end
  return curent_safe
end
    
input=list.split("\n")
safe=0
input.each do |objekt|
  if funktion_1(objekt) || funktion_2(objekt)
    safe+=1
  end
end
p safe