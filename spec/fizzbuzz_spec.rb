# frozen_string_literal: true

require 'rspec'

describe Solver do
  it 'Prints fizzbuzz' do
    test = Solver.new
    result = test.fizzbuzz(30)
    expect(result).to eq 'fizzbuzz'
  end

  it 'Prints fizz' do
    test = Solver.new
    result = test.fizzbuzz(3)
    expect(result).to eq 'fizz'
  end

  it 'Prints buzz' do
    test = Solver.new
    result = test.fizzbuzz(20)
    expect(result).to eq 'buzz'
  end

  it 'Prints the number 11' do
    test = Solver.new
    result = test.fizzbuzz(11)
    expect(result).to eq 11
  end

  it 'Prints the number 4' do
    test = Solver.new
    result = test.fizzbuzz(4)
    expect(result).to eq 4
  end
end
