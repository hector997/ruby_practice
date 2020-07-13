class LinkedList
  attr_accessor :head, :tail, :size, :name

  def initialize
      @head = nil
      @tail = nil
      @size = 0
  end

  def append(value)
      node = Node.new(value)
      @head == nil ? @head = node : @tail.next_node = node
      @tail = node
      @size += 1
  end

  def prepend(value)
      node = Node.new(value)
      node.next_node = @head
      @head = node
      @size += 1
  end

  def size
      puts "There are #{@size} nodes in this list."
  end

  def head
      puts "The head node is #{@head.value}."
  end

  def tail
      puts "The tail node is #{@tail.value}."
  end

  def at(index)
      current_node = @head
      x = index - 1
      x.times do
          current_node = current_node.next_node
      end
      return current_node
  end

  def pop
      index = 1
      current_node = @head
      while current_node.next_node != nil
          current_node = current_node.next_node
          index += 1
      end
      @tail = self.at(index - 1)
      @size -= 1
      puts "#{current_node.value} was removed"
  end

  def contains?(value)
      current_node = @head
      until current_node.next_node == nil
          current_node = current_node.next_node
          if current_node.value == value
              puts "#{value} found."
              break
          elsif current_node.next_node == nil
              puts "#{value} not found."
          else
          end
      end
  end

  def find(value)
      current_node = @head
      index = 0
      until current_node == nil
          index += 1
          if current_node.value == value
              puts "#{value} location: #{index}."
              break
          elsif current_node.next_node == nil && current_node.value != value
              puts "nil"
              return nil
          end
          current_node = current_node.next_node
      end
  end

  def to_s
      current_node = @head
      until current_node == nil
          print "(#{current_node.value}) -> "
          current_node = current_node.next_node
      end
      print "nil\n"
  end

end



class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
  end
end

names = LinkedList.new
names.append("Juan")
names.prepend("Juanga")
names.append("Nadia")
names.append("Pete")
names.prepend("Jeoff")
