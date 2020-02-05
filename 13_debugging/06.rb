require "pry"

def move(n, from_array, to_array)
  to_array << from_array.shift
  n -= 1
    if n > 0
    move(n - 1, from_array, to_array)
  end

end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']