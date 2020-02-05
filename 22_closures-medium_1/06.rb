comparator = proc { |a, b| b <=> a }

array.sort(&comparator)
# array.sort is expecting a block. here we're explicitly converting a proc into a block.

def convert_to_base_8(n)
  n.to_s(8).to_i
end

base8_proc = method(:convert_to_base_8).to_proc

[8, 10, 12, 14, 16, 33].map(&base8_proc)
# =>  [10, 12, 14, 16, 20, 41]