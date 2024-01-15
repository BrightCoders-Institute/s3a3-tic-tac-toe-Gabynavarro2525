class Cat
    def print_board(c)
    for row in c
        puts "#{row}\n"
    end
    puts "\n"
    end
  
    def insert_user_marker(c, row, col)
      if col < 3 && row < 3 && col >= 0 && row >= 0
        c[row][col] = "X"
        c = insert_computer_marker(c, row, col)
        return c
      end
      return c
    end
  
    def insert_computer_marker(c, row, col)
      if col == 0 && row == 0
        if c[1][col] == "_"
          c[1][col] = "O"
          return c
        elsif c[1][1] == "_"
          c[1][1] = "O"
          return c
        elsif c[row][1] == "_"
          c[row][1] = "O"
          return c
        end
        return c
      else
        if c[row - 1][col - 1] == "_"
          c[row - 1][col - 1] = "O"
          return c
        elsif c[row - 1][col] == "_"
          c[row - 1][col] = "O"
          return c
        elsif c[row - 1][col + 1] == "_"
          c[row - 1][col + 1] = "O"
          return c
        elsif c[row][col - 1] == "_"
          c[row][col - 1] = "O"
          return c
        elsif c[row][col + 1] == "_"
          c[row][col + 1] = "O"
          return c
        elsif c[row + 1][col - 1] == "_"
          c[row + 1][col - 1] = "O"
          return c
        elsif c[row + 1][col] == "_"
          c[row + 1][col] = "O"
          return c
        elsif c[row + 1][col + 1] == "_"
          c[row + 1][col + 1] = "O"
          return c
        end
      end
      return c
    end
  end
  
  board = [["_","_","_"],["_","O","_"],["_","_","_"]]
  cat_game = Cat.new
  puts "\nStart\n"
  cat_game.print_board(board)
  
  i = 0
  while i < 4
    puts "Row?"
    row = STDIN.gets
    row.chomp!
    row = row.to_i
    puts "Column?"
    col = STDIN.gets
    col.chomp!
    col = col.to_i
    if board[row][col] == "_"
      board = cat_game.insert_user_marker(board, row, col)
      cat_game.print_board(board)
    else
      print "Error\n"
      i -= 1
    end
    i += 1
  end