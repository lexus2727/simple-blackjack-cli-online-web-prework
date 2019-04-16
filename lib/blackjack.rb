require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # Generate a number from 1 to 11
  #including 11
 rand(11) + 1
 end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}."
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(card_total)
  # code #end_game here
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
 end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
   
  
  display_card_total(card_total)
  puts "Your cards add up to #{card_total}."
  card_total
end



def hit?(current_card_total)
  # code hit? here
 prompt_user
 answer = get_user_input
 if answer == 's'
 end_game(current_card_total)
   elsif answer == 'h'
   current_card_total += deal_card
   display_card_total(current_card_total)
   current_card_total
 else
   invalid_command
  end
 end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  deal_card
  
  
  card_total = initial_round
 until card_total == 21 
   card_total = hit?(card_total)
    display_card_total(card_total)
 end
 end_game(card_total)
 end
   
