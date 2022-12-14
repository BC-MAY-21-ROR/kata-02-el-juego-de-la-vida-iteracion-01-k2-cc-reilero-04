def game(width,height,*args)
  gamedimensions = Array.new(height) { Array.new(width) {'.'} }
  $nextgen = Array.new(height) { Array.new(width) {'.'} }

  def liveordeadcell(fila,columna,actualgame)
    cell = actualgame[fila][columna]
    countCells = 0
    if cell == '*'

      if actualgame[fila - 1][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila - 1][columna] == '*'
        countCells += 1
      end

      if actualgame[fila - 1][columna + 1] == '*'
        countCells += 1
      end

      if actualgame[fila][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila][columna + 1] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna + 1] == '*'
        countCells += 1
      end

      if countCells != 2 && countCells != 3
        $nextgen[fila][columna] = '.'
      else
        $nextgen[fila][columna] = '*'
      end

    elsif cell == '.'
      if actualgame[fila - 1][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila - 1][columna] == '*'
        countCells += 1
      end

      if actualgame[fila - 1][columna + 1] == '*'
        countCells += 1
      end

      if actualgame[fila][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila][columna + 1] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna - 1] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna] == '*'
        countCells += 1
      end

      if actualgame[fila + 1][columna + 1] == '*'
        countCells += 1
      end

      if countCells == 3
        $nextgen[fila][columna] = '*'
      else
        $nextgen[fila][columna] = '.'
      end
    end
  end

  for position in 0..args[0].length-1 do
    positionX = args[0][position][0]
    positionY = args[0][position][1]

    gamedimensions[positionX][positionY] = '*'
  end

  for a in 0..height-1 do
    puts gamedimensions[a].join(' ')
  end

  puts '----------------------------'

  for a in 0..height-1 do
    puts $nextgen[a].join(' ')
  end

end

game 6,6,[[0,2],[1,2],[2,1],[2,2],[2,3],[3,1],[3,2],[3,3],[4,2]]



  # Randomizador de posiciones de celulas vivas
  # for b in 0..height-1 do

  #   for c in 0..width-1 do
  #     number = rand(1..5)

  #     if number == 1
  #       gamedimensions[b][c] = '*'
  #     end

  #   end

  # end