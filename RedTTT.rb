def create_grid
        @grid = {
        '1' => ' ',
        '2' => ' ',
        '3' => ' ',
        '4' => ' ',
        '5' => ' ',
        '6' => ' ',
        '7' => ' ',
        '8' => ' ',
        '9' => ' ' }
end

def display

    puts ""
    puts " #{@grid['1']} | #{@grid['2']} | #{@grid['3']}"
    puts " #{@grid['4']} | #{@grid['5']} | #{@grid['6']}"
    puts " #{@grid['7']} | #{@grid['8']} | #{@grid['9']}"
    puts ""
end
  
def play
   number_turns=1
  while number_turns < 10
      if number_turns.odd
       puts "It's #{@player1} turn!"
        else
       puts "It's #{@player2} turn!"
      end
    number_turns = number_turns + 1
  end
end

def player_turn(player)
    if @player1 
    cell = gets.chomp
    else 
    cell = gets.chomp
end
    unless @grid.include?(cell)
 puts ""
        puts "it has to be a number from 1 to 9"
    end
    if @grid[cell] == ' '
      
 @grid[cell] = player
    else
        puts ""
        puts "That cell's taken, buddy. Try again!"
        player_turn(player)
    end
    show_grid
end
def game_checker     
      
end_game = false
    if    ((@grid['1'] == @grid['2'] && @grid['1'] == @grid['3']) && (@grid['1'] != ' ' && @grid['2'] != ' ' && @grid['3'] != ' ')) 
        end_game=true
        victory=@grid['1']
    elsif ((@grid['4'] == @grid['5'] && @grid['4'] == @grid['6']) && (@grid['4'] != ' ' && @grid['5'] != ' ' && @grid['6'] != ' '))
        end_game=true
        victory=@grid['4']
    elsif ((@grid['7'] == @grid['8'] && @grid['7'] == @grid['9']) && (@grid['7'] != ' ' && @grid['8'] != ' ' && @grid['9'] != ' '))
        end_game=true
        victory=@grid['7']
    elsif ((@grid['1'] == @grid['4'] && @grid['1'] == @grid['7']) && (@grid['1'] != ' ' && @grid['4'] != ' ' && @grid['7'] != ' '))
        end_game=true
        victory=@grid['1']
    elsif ((@grid['2'] == @grid['5'] && @grid['2'] == @grid['8']) && (@grid['2'] != ' ' && @grid['5'] != ' ' && @grid['8'] != ' '))
        end_game=true
        victory=@grid['2']
    elsif ((@grid['3'] == @grid['6'] && @grid['3'] == @grid['9']) && (@grid['3'] != ' ' && @grid['6'] != ' ' && @grid['9'] != ' '))
        end_game=true
        victory=@grid['3']
    elsif ((@grid['1'] == @grid['5'] && @grid['1'] == @grid['9']) && (@grid['1'] != ' ' && @grid['5'] != ' ' && @grid['9'] != ' '))
        end_game=true
        victory=@grid['1']
    elsif ((@grid['7'] == @grid['5'] && @grid['7'] == @grid['3']) && (@grid['7'] != ' ' && @grid['5'] != ' ' && @grid['3'] != ' '))
        end_game=true
        victory=@grid['7']
    else
        end_game=false
    end

if victory  == 'X'
       puts "Victory belongs to #{@player1}"
       return end_game = true
    else
        puts "Victory belongs to #{@player2}"
       return end_game = true
end

PM if you have any question. Really any help would be immensely appreciated!
end