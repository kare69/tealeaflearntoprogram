
def say (msg)

 puts "=> #{msg}"

end

say ("Whats the first number that you want to use: ")
num1 = gets.chomp
say ("What is the second number that you want to use:")
num2 = gets.chomp
say ("What is the operation that you wish to perform, 1) add, 2) sub, 3) mult,  4) div")
choice = gets.chomp





def add(a,b)

	sum = a.to_i + b.to_i

	puts "Your result is #{sum}"

end

def sub(a,b)

	sub = a.to_i - b.to_i

	puts "Your result is #{sub}"

end

def mulitply(a,b)

	mult = a.to_i * b.to_i

	puts "Your result is #{mult}"

end

def divide(a,b)

	div = a.to_f / b.to_f

	puts "Your result is #{div}"

end

while choice.to_i > 5 || choice.to_i < 1
puts "You did not enter the right value! Please enter it again"
choice = gets.chomp
end



case  choice
       when "1"
  	     add(num1, num2)
       when "2"
         sub(num1, num2)
       when "3" 
  	     mulitply(num1, num2)
       when "4"
  	     divide(num1,num2)
      else

     	puts "You have not entered a valid choice!"
     	
      
end
