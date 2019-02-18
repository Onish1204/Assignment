class Task

  # Coding Puzzle - Array program: firstly get input from user then calculate solution.

  # Getting user inputs for array - will ask repetedly if length given is less than 3

  puts 'Pls enter arrays length'
  $length = gets.to_i;

  # ask repetedly till length is less than 3.

  while($length <3)
    puts "length could not be less than 3, plz enter again"
    $length = gets.to_i;
  end

  # Initializing array

  $inputValues = Array.new($length, 0)

  i =0

  while i < $length do
    puts "Please enter number with index #{i}"
    $inputValues[i] = gets.to_i
    i=i+1
  end

  # Method to get actual result value at end

  def resolvePuzzle

    result = checkArrayStatus

    # check whether  result is boolean or not

    isBoolean = [true, false].include? result

    # if not boolean then a number which gives result

    if isBoolean == false
      return result

      # if result is a boolean then it will return with contradict number in the array

    else

      return getResultValue(result)
    end

  end

  # check for which value result is contradict and it will be returned

  def getResultValue(result)
    i=0
    while result == isEven($inputValues.at(i)) do
      i+=1
    end
    return $inputValues.at(i)
  end

  # check whether array input is even or odd

  def checkArrayStatus()
    firstNumberStatus = isEven($inputValues.at(0))
    secondNumberStatus = isEven($inputValues.at(1))

    $returnValue =  firstNumberStatus == secondNumberStatus ? firstNumberStatus : firstNumberStatus == isEven($inputValues.at(2)) ? $inputValues.at(1): $inputValues.at(0)

    return $returnValue
  end

  # check if given value is even or not

  def isEven(number)
    if number %2 == 0
      return true
    else
      return false
    end
  end

  #Created method to call final method to get result

  $p = Task.new

  puts "The different number in an array is #{$p.resolvePuzzle}"

end
