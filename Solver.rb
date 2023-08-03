class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial must be a positive number' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number
    end
  end

  def reverse(word)
    word.reverse
  end
end
