array = [1,2,3,4,5,6,7,8,9,10]

puts "All numbers greater in array: "
array.each do |f|

print  " " + f.to_s + ",\n "

end 
puts "All numbers greater then 5: "
array.each do |f|

  if f > 5 

    print " " + f.to_s + ", \n"

  end

end

puts "All odd numbers: "
array.select do |f|

  if f.odd?
  print "  " + f.to_s + ", \n"
  end


end  


array.insert(0,0)
array<< 11

array.pop 
array<<3

array.uniq!

puts " No Duplicates \n" + array.to_s + " \n"


puts "Hash using ruby 1.8 syntax \n"
deck_of_cards = {:H => '2', :S => '10', :C => '4', :D => '8' }
puts deck_of_cards

puts "Hash using ruby 1.9 syntax \n"
deck_of_cards2 = { H:2, S:10, C:4, D:8 }
puts deck_of_cards2

h = {a:1, b:2, c:3, d:4}

h[:e] = 5

p h[:b] 

p h

h.each do |f,v|

 if v < 3.5
 	h.delete(f)
  end
end 

p h















#h = {:a=>1, :b=>2, :c=>3, :e=>4, :d=>54, :f=>6}

#h[:g] = [4,7,0,1]

#k = [{a: 5, h: 7, k: 9},{b: 10, c: 20,  d: 50},h]

#p k