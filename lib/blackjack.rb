def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # Generate a number from 1 to 11
  #including 11
 rand(11) + 1

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
  return card_total
  
  display_card_total
  puts "Your cards add up to #{card_total}."
   "card_total"
end

def new_hit(card_total)
  card_total += deal_card
end

def hit?(current_card_total)
  # code hit? here
 prompt_user
 answer = get_user_input
 if answer == 's'
   display_card_total
   elsif answer == 'h'
   current_card_total += deal_card
   display_card_total
   return current_card_total
 else
   invalid_command
  end
 end

def invalid_command
  # code invalid_command here
  puts "Please entera valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  Welcome
  prompt_user
  get_user_input
  
  
  stay = false
  until (card_total > 21 || stay)
  puts "would you like to hit 'h' or stay 's'?"
  answer = 'h'
  if answer == 'h'
    deal_card
    card_total = new_hit(card_total)
  elsif answer == 's'
  stay = true
  display_card_total
  puts "would you like to hit 'h' or stay 's'?"
 else
   invalid_command
end
    
