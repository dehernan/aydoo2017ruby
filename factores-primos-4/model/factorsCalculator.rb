class FactorsCalculator

  def getPrimeNumbers(input, order)
  	validateInput(input)
  	numberToFactor = input.to_i
  	factors = obtainFactors(numberToFactor)
  	result = formatOutput(factors, order)
  end

  def obtainFactors(number)
  	factors = Array.new
  	if number == 1
  	  factors << number
  	  return factors
  	else
  	  i = 2
  	  num = number
  	  while i <= num do 
  	  	while num % i == 0
  	      num = num/i
  	      factors << i
  	    end
  	    i += 1
  	  end
  	  return factors
  	end
  end

  def formatOutput(factors, order)
  	if order == 'desc'
  	  factors.reverse!
  	end
  	return factors*","
  end

  def validateInput(input)
  	if !is_number?(input)
  	  raise Exception, 'El valor introducido no es un numero'
  	end
  end

  def is_number?(input)
    true if Integer(input) rescue false
  end
end
