def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] != "X" && "O"
    return false
  else
    return true
  end
end

def valid_move?(board, index, token = "X")
  puts index 
  if index.between?(0, 8) == true
    if !(position_taken?)
      board[index] == token
      return true
    else
      puts "Position is taken!"
      return false
    end
  else
    puts "Invalid position"
    return false
  end

end

def turn(board)
  puts "Please enter 1-9: "
  input = gets.to_i
  index = input -=
  until valid_move?(board, index)
    valid_move?(board, index)
  end
end
