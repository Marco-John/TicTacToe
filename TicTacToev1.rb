def print_game_board
	puts "Game Board"
	puts " 1 | 2 | 3 "
	puts "-----------"
	puts " 4 | 5 | 6 "
	puts "-----------"
	puts " 7 | 8 | 9 "
end

def start_game
	puts "Would you like to play a game of Tic-Tac-Toe? yes or no"
	answer_play_to_game = gets.chomp

	if answer_play_to_game.upcase == "YES" || answer_play_to_game.upcase == "Y"
		print_game_board
	else 
		puts "End Game"
		exit
	end
end	

def player_one_marker()
	puts "Would you like to be X or O?"
	player_one_answer_for_x_or_o = gets.chomp
	if player_one_answer_for_x_or_o.upcase == "X"
		puts "Player #1 has chosen X"
		puts "Player #2 is O"
	elsif
		player_one_answer_for_x_or_o.upcase == "O"
		puts "Player #1 has chosen O"
		puts Player #2 is X.
	else
		puts "Invalid Entry:  Your Game Has Ended"
		exit
	end	
	print_game_board
	player_one_answer_for_x_or_o.upcase
end
	
def player_two_marker(p1)
	if p1 == "X"
		"O"
	else
		"X"
end

start_game

player_one = player_one_marker()

player_two = player_two_marker(player_one)
puts "Player #2 is #{player_two}."