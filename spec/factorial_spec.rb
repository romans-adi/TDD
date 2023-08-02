require 'rspec'

describe Solver do
  describe '#factorial' do
    subject(:solver) { described_class.new }

    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial for positive numbers' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an ArgumentError for negative numbers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Factorial must be a positive number')
    end
  end
end
