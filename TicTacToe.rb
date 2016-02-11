def print_game_board(array)

	puts "Game Board"
	
	puts " #{array[0]} | #{array[1]} | #{array[2]} "
	puts "-----------"
	puts " #{array[3]} | #{array[4]} | #{array[5]} "
	puts "-----------"
	puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def start_game
	puts "Would you like to play a game of Tic-Tac-Toe? yes or no"
	answer_play_to_game = gets.chomp

	if answer_play_to_game.upcase != "YES" && answer_play_to_game.upcase != "Y"
		puts "End Game"
		exit
	end
end	

def player_one_marker()
	puts "Would you like to be X or O?"
	player_one = gets.chomp
	
	if player_one.upcase == "X"
		puts "Player #1 has chosen X"
	elsif	player_one.upcase == "O"
		puts "Player #1 has chosen O"
	else
		puts "Invalid Entry:  Your Game Has Ended"
		exit
	end	
	player_one.upcase
end	
	
def player_two_marker(p1)
	if p1 == "X"
		"O"
	else
		"X"
	end
end

def player_one_choice
	puts "Player 1 - Choose Space"
	player_one_answer = gets.chomp
	player_one_answer.to_i
end
	
def player_two_choice
	puts "Player 2 - Choose Space"
	player_two_answer = gets.chomp
	player_two_answer.to_i
end	
	

#start_game
#
#player_one = player_one_marker()
#
#player_two = player_two_marker(player_one)
#puts "Player #2 is #{player_two}."
#player_one_choose_one_through_nine