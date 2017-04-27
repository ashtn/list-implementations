# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] #native array: fixed size is the fixed capacity, indexing
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    raise "error" if @size == 0
    # @storage[@size] # not neccessary
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end

  def max
    raise "error" if @size == 0
    largest = @storage[0] #don't return a weird place holder number
    @size.times do |i|
      if @storage[i] > largest
        largest = @storage[i]
      end
    end
    return max
  end

  def remove_all(value)
    @size.times do | i |
      # TODO BRB
    end
  end

  def to_s #toString
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}" + ", "
    end
    return "[#{str[0..-3]}]"
  end
end
