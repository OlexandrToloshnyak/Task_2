require_relative 'autoload'

puts '1)'
arr = [['X', '', ''],
       ['', 'X', ''],
       ['O', '', 'O']]
game = Game.new(arr)
p arr
p game.call
puts '2)'
arr = [['', 'X', ''],
       ['X', 'X', ''],
       %w[O O O]]
game = Game.new(arr)
p arr
p game.call
