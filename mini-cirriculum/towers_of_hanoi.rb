# Write a Towers of Hanoi game.
# Keep three arrays, which represents the piles of discs. Pick a representation of the discs to store in the arrays; maybe just a number representing their size.
# In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.
# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!

def check_success_conditions towers
  towers[2] == [*1..4].reverse
end

def move_disc(towers, from, to)
  disc = towers[from].pop
  towers[to].push disc
  towers
end

def get_user_input
  print "Move ring from: "
  from = gets.chomp.to_i
  print "Move ring to: "
  to = gets.chomp.to_i
  [from-1, to-1]
end

def print_current_state(towers, move_count)
  puts "-"*8
  puts "You've made #{move_count} moves so far."
  puts "Tower 1 is laid out: " + towers[0].to_s
  puts "Tower 2 is laid out: " + towers[1].to_s
  puts "Tower 3 is laid out: " + towers[2].to_s
  puts "-"*8
end

def is_move_valid?(towers, move)
  from = towers[move[0]]
  if move[0] < 0 || move[0] > 2
    return false
  end
  if move[1] < 0 || move[1] > 2
    return false
  end
  if from.empty?
    return false
  end
  if !towers[move[1]].empty?
    if towers[move[0]].last > towers[move[1]].last
      return false
    end
  end
  true
end


towers = Array.new(3)
towers[0] = [*1..4].reverse
towers[1] = Array.new
towers[2] = Array.new

move_count = 0
success = false

until success
  print_current_state towers, move_count
  move = get_user_input
  if is_move_valid?(towers, move)
    move_disc(towers, move[0], move[1])
    move_count += 1
    success = check_success_conditions(towers)
  else
    puts "That move isn't valid."
  end
end

puts "You solved it in #{move_count} moves!"
