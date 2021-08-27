# To test my code works, create a new instance of the stack class.
#play around with adding and removing elements.
class Stack
    def initialize
        @stacks = Array.new
        #create ivar to store stack here!
    end
    def push(ele)
        @stacks << ele
        #adds an element to the stack
    end
    def pop
        @stacks.pop
        #removes one element from the stack
    end
    def peek
        @stacks[-1]
        #returns but doesn't remove, the top element in the stack
    end
end

# p stack = Stack.new
# p stack.push("Jake")
# p stack.push("Hello")
# p stack.push("Alvin")
# p stack.push("Bootcamp")
# p stack.pop
# p stack.pop
# p stack
# p stack.peek



#Queue
#
class Queue
    def initialize
        @queue = []
    end
    def enqueue(ele)
        @queue.push(ele)
    end
    def dequeue
        @queue.shift
    end
    def peek
        @queue[0]
    end
end

# p queue = Queue.new
# p queue.enqueue("Janie")
# p queue.enqueue("Jake")
# p queue.enqueue("Hello")
# p queue.enqueue("Tissue")
# p queue.enqueue("Water")
# p queue.dequeue
# p queue.dequeue
# p queue.dequeue
# p queue.peek
# p queue

#MAP
#2D Array - map. 
#Follow similar pattern to stack and queue, implements a map usingonly arrays.
#keys are unique
#key value pair
#my_map = [[k1,v1],[k2,v2]..]
class Map
    def initialize
        @set = Array.new
    end
    def set(key,value)
    index = @set.index {|pair| pair[0] == key}
    if index
        @set[index][1] = value
    else
        @set.push([key,value])
    end
    value
        #crate a new key-value pair
        #update the value for existing key.
    end

    def get(key)
        @set.each do |pair|
            return pair[1] if pair.include?(key)
        end
    end
    
    def delete(key)
        @set.reject!{|pair| pair[0] == key}
    end

    def show
        @set
    end

end

p map = Map.new
p map.set("a",1)
p map.set("b",2)
p map.set("c",3)
p map.set("d",4)
p map.set("e",5)
p map
p map.get("c")
p map
p map.delete("e")
p map.delete("b")
p map.show