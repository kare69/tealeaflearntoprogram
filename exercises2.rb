
puts "This method can tell you the number of hours in a year:"


def hours_in_a_year 

   hours = 24 * 365

end



def minutes_in_a_decade


  mins = 525600 * 10

end

def age_in_seconds


  age =  525600 * 60 * 35

	end


def our_dear_authors_age

 author = 1160000000 / 31500000
 puts "The Author's Age is #{author} years old"

end
puts hours_in_a_year

puts minutes_in_a_decade

puts age_in_seconds

our_dear_authors_age


arr = [1,2,3,4,5,6,7,8,9,10]

odd_array = arr.select { |f| f.odd? }	

arr<<11

arr.unshift(0)

arr.pop
arr<<3

arr.uniq!    
p  arr



