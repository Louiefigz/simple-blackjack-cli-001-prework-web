

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(the_card_total)
  the_card_total
  puts "Your cards add up to #{the_card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  reply = gets.chomp.downcase
end

def end_game(over_21)
  puts "Sorry, you hit #{over_21}. Thanks for playing!"
  
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
  
  
end

def hit?(new_hand)
  prompt_user
  user_response = get_user_input

  if user_response == "h"
    
    new_hit = deal_card
    new_hand= new_hand + new_hit
  else
    new_hand
end
  
  
end

def invalid_command
  puts "Dude.  Get your game up.  Read them instructions."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


  def runner
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end
  end_game(score)
end
    
