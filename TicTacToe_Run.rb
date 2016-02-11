require_relative "TicTacToe.rb"

board_array = [1,2,3,4,5,6,7,8,9]

start_game

player_one = player_one_marker()

player_two = player_two_marker(player_one)
puts "Player #2 is #{player_two}."

print_game_board(board_array)

number_of_turns = 1
while number_of_turns < 10
  # number_of_turns is odd then it is player 1's turn
  if number_of_turns % 2 != 0
    # Place Player One choice into board array
    board_array[player_one_choice-1] = player_one
  else
    # Place Player Two choice into board array
    board_array[player_two_choice-1] = player_two
  end
  print_game_board(board_array)
  number_of_turns = number_of_turns + 1
end