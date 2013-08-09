
suit = ['H', 'S', 'C', 'D']

cards = ['2','3', '4', '5', '6', '7', '8', '9','10', 'J', 'Q', 'K', 'A']
#mixing of the arrays to one super array
deck = suit.product(cards)

deck.shuffle!

#This is where the first card is given
  players_cards = []

   2.times {players_cards<<deck.sample}
   
 p  players_cards
#This looks for the player to ask for another card, this puts the
 #card in the array
def hit_me_player (players_cards, deck)
  
   players_cards<<deck.sample
	
   puts "   " + "\n"
   p players_cards

end
 #Where the player  will ask for another card 
 puts "Player: Hit you?"
 answer= gets.chomp
 while answer != 'no'
    
     hit_me_player(players_cards, deck)
     puts "Again?"
     answer= gets.chomp


 end
    if answer =='no'
        p players_cards  
    end

puts "   " + "\n"

    sum_array_player = []
    sum_array_player = players_cards.flatten


   sum_array_player.each do |f|

     #To delete the houses and focus on numbers
     case f

     when "D"
     	sum_array_player.delete(f)
     when "C"
     	sum_array_player.delete(f)
     when "S"
     	sum_array_player.delete(f)
     when "H"
     	sum_array_player.delete(f)
     #To delete royality
     when "A"
     	sum_array_player.delete(f)
     	sum_array_player<<10
     when "J"
     	sum_array_player.delete(f)
     	sum_array_player<<10
     when "K"
     	sum_array_player.delete(f)
     	sum_array_player<<10
     when "Q"
     	sum_array_player.delete(f)
     	sum_array_player<<10
     end

   end

   add_array_player = sum_array_player.map(&:to_i)

   summed_up_player = add_array_player.inject(0, :+)

   p summed_up_player
  
   puts "   " + "\n"

   # Busted 
  
    if summed_up_player > 21
    	p "You Busted!"
    # Still in play 
    else
       p "You're still in play  " + "#{summed_up_player}"

     end

 #House takes its first cards
  house_cards = []

   2.times {house_cards<<deck.sample}
   
  p house_cards

  #Method where house takes another cards

def hit_me_house (b,deck)
  	
   b<<deck.sample
   puts "   " + "\n"
   p b
end

#House takes another card   
puts "House takes another card?"
answer= gets.chomp


 while answer != 'no'
    
     hit_me_house(house_cards, deck)
     puts "Hit you?"
     answer= gets.chomp
       
  end

     puts "   " + "\n"
      if answer =='no'
        p house_cards
      end
     puts "   " + "\n"
    sum_array_house = []
    sum_array_house = house_cards.flatten


   sum_array_house.each do |f|

     #To delete the houses and focus on numbers
     case f

     when "D"
     	sum_array_house.delete(f)
     when "C"
     	sum_array_house.delete(f)
     when "S"
     	sum_array_house.delete(f)
     when "H"
     	sum_array_house.delete(f)
     #To delete royality
     when "A"
     	sum_array_house.delete(f)
     	sum_array_house<<10
     when "J"
     	sum_array_house.delete(f)
     	sum_array_house<<10
     when "K"
     	sum_array_house.delete(f)
     	sum_array_house<<10
     when "Q"
     	sum_array_house.delete(f)
     	sum_array_house<<10
     end

   end

 
   add_array_house = sum_array_house.map(&:to_i)

   summed_up = add_array_house.inject(0, :+)

   # Busted 
  
  

     p "The value of your cards are #{summed_up}"



     if summed_up < summed_up_player
     	p "Player Wins"

     else 
     	p "House Wins"

     end
   