# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(number)
  number.to_s.to_i.to_s == number.to_s.to_i.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
# p palindromic_number?(00066)
# ruby interprets numbers beginning with 0 to be octal numbers, and they can only take values from 0 - 7.