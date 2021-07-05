RSpec.describe Game do
  subject(:game) { described_class.new(board) }

  describe 'lose' do
    let(:board) { [['X', '', ''], ['', 'X', ''], ['O', '', 'O']] }

    it 'returnses ""' do
      expect(game.call).to eq('')
    end
  end

  describe 'win' do
    context 'when X' do
      let(:board) { [['X', '', ''], ['', 'X', ''], ['O', '', 'X']] }

      it 'returnses "X"' do
        expect(game.call).to eq('X')
      end
    end

    context 'when O' do
      let(:board) { [['X', '', ''], ['', 'X', ''], %w[O O O]] }

      it 'returnses "O"' do
        expect(game.call).to eq('O')
      end
    end
  end
end
