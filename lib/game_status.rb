# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  

X_combo = []
O_combo = []
  
  
def won?(board)
  # I want to leave a comment
  myIndex = 0
  # puts(board)

  for moves_combo in board do
    if moves_combo == "X"
      X_combo << myIndex
    elsif moves_combo == "O"
      O_combo << myIndex
    end
    myIndex+=1
  end
  
  # Show the current X_combo
  puts("Current X_combo")
  puts(X_combo)
  
  
  for win_combo in WIN_COMBINATIONS do
    puts("Current win_combo")
    puts(win_combo)
    win_count=0

    puts("Checking if X_combo in win_combo")
    
    for x_number in X_combo do
      for win_number in win_combo do
        if win_number == x_number
          win_count+=1
          puts("Current win_count")
          puts(win_count)
        end
      end
    end
    
    for o_number in O_combo do
      for win_number in win_combo do
        if win_number == o_number
          win_count+=1
          puts("Current win_count")
          puts(win_count)
        end
      end
    end
    
    if draw?(board) == TRUE
      return FALSE
    end
    
    if win_count >= 3
      TRUE
      return win_combo
    end
  end
  
  # No winning combos detected
  return FALSE
end

def full?(board)
  board.detect do |empty|
    if empty == " " || empty == nil
      return FALSE
  return TRUE
    end
  end
end

def draw?(board)
  if (full?(board) == TRUE) && (won?(board) == FALSE)
    return TRUE
  else
    return FALSE
  end
end

def over?
end

def winner
end
