require 'rspec'

describe Solver do
  describe "#reverse" do
    it "returns 'olleh' when the word is 'hello'" do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
end
  