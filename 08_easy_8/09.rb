# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

def reversed_number(number)
  p number.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1