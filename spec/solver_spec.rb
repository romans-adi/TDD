require 'rspec'
require_relative '../Solver'

describe Solver do
  describe '#factorial' do
    context 'when the input number is 0' do
      it 'returns 1' do
        solver = described_class.new
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when the input number is 1' do
      it 'returns 1' do
        solver = described_class.new
        expect(solver.factorial(1)).to eq(1)
      end
    end

    context 'when the input number is a positive number' do
      it 'returns the correct factorial for 5' do
        solver = described_class.new
        expect(solver.factorial(5)).to eq(120)
      end

      it 'returns the correct factorial for 10' do
        solver = described_class.new
        expect(solver.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when the input number is negative' do
      it 'raises an ArgumentError' do
        solver = described_class.new
        expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Factorial must be a positive number')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when the number is divisible by both 3 and 5' do
      it 'returns "fizzbuzz"' do
        solver = described_class.new
        result = solver.fizzbuzz(30)
        expect(result).to eq 'fizzbuzz'
      end
    end

    context 'when the number is divisible by 3 but not by 5' do
      it 'returns "fizz"' do
        solver = described_class.new
        result = solver.fizzbuzz(3)
        expect(result).to eq 'fizz'
      end
    end

    context 'when the number is divisible by 5 but not by 3' do
      it 'returns "buzz"' do
        solver = described_class.new
        result = solver.fizzbuzz(20)
        expect(result).to eq 'buzz'
      end
    end

    context 'when the number is neither divisible by 3 nor by 5' do
      it 'returns the number itself' do
        solver = described_class.new
        result = solver.fizzbuzz(11)
        expect(result).to eq 11
      end
    end
  end

  describe '#reverse' do
    it "returns 'olleh' when the word is 'hello'" do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
end
