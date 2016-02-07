require_relative "TicTacToe.rb"

board_array = [1,2,3,4,5,6,7,8,9]

start_game

player_one = player_one_marker()

player_two = player_two_marker(player_one)
puts "Player #2 is #{player_two}."

print_game_board(board_array)

# Place Player One choice into board array
board_array[player_one_choice-1] = player_one

print_game_board(board_array)

# Place Player Two choice into board array
board_array[player_two_choice-1] = player_two

print_game_board(board_array)