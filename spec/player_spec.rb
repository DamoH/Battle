require 'player'

describe Player do

  subject(:bob) {Player.new("bob")} #stub
  describe 'it returns player name' do
    it 'prints the name of player' do
      expect(bob.name).to eq("bob")
    end
  end

end
