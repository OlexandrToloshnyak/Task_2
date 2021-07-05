class Game
  attr_reader :board

  def initialize(board)
    @board = Matrix[*board]
  end

  def call
    if row?
      row?
    elsif column?
      column?
    elsif diagonal?
      diagonal?
    else
      ''
    end
  end

  private

  def first_diagonal
    board.each(:diagonal).to_a
  end

  def second_diagonal
    Matrix[*board.to_a.map(&:reverse).transpose].each(:diagonal).to_a
  end

  def diagonal?
    if first_diagonal.uniq.size == 1
      first_diagonal.first
    elsif second_diagonal.uniq.size == 1
      second_diagonal.first
    else
      false
    end
  end

  def row?
    3.times do |i|
      return board.row(i).first if board.row(i).uniq.size == 1
    end
    false
  end

  def column?
    3.times do |i|
      return board.column(i).first if board.column(i).uniq.size == 1
    end
    false
  end
end
