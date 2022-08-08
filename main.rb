def game(width,height)
  gamedimensions = Array.new(height) { Array.new(width) {'.'} }

  for b in 0..height-1 do

    for c in 0..width-1 do
      number = rand(1..5)

      if number == 1
        gamedimensions[b][c] = '*'
      end

    end

  end

  for a in 0..height-1 do
    puts gamedimensions[a].join(' ')
  end

end

game 10,10