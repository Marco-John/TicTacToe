def	print_game_board
    puts "Game Board"
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
end

def ask_to_play_game
    puts "Would you like to play a game of tic-tac-toe?"
    answer_to_play_game = gets.chomp

    if answer_to_play_game.upcase == "YES"
        print_game_board
    else
        puts "The game has been ended."
        exit
    end
end

def player_one_marker()    
    puts "Player 1, would you like to be X or O?"
    player_one_answer_for_x_or_o = gets.chomp

    if player_one_answer_for_x_or_o.upcase == "X"
            puts "Player 1 has chosen X."
    elsif player_one_answer_for_x_or_o.upcase == "O"
            puts "Player 1 has chosen O."
    else 
        puts "Invalid character: The game has been ended."
        exit
    end
    player_one_answer_for_x_or_o.upcase
end

def player_two_marker(p1)
    if p1 == "X"
        "O"
    else
        "X"
    end
end

ask_to_play_game

player_one = player_one_marker()

player_two = player_two_marker(player_one)
puts "Player two is #{player_two}."