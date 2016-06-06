#1. Has attribute 'data_store' that displays array of values in Queue
#2. Has attribute 'back' that displays last value in array, 0 by defauls and user cannot set
#3. Has attribute 'max', 'min' that keeps track of max & min values in array 
#4. Has method 'enqueue' method that adds new value to end of array
#5. Has method 'dequeue' method that removes first value of queue, returns 'nil' if array empty

class Queue
  attr_accessor :data_store, :max, :min
  attr_reader :back
  def initialize
  	@data_store = []
  	@back = 0
  	@max = 0
  	@min = 0
  end 

  def enqueue(number)
  	if @data_store.length < 1
  	  @max = number
  	  @min = number
  	else
  	  if number > @max
  	    @max = number
  	  elsif number < @min 
  	    @min = number
  	  end 
  	end 
  	@data_store.insert(-1, number)
  	@back = @data_store[-1]
    self
  end 

  def dequeue
  	if @data_store.length == 0
      @data_store = nil
      @max = nil 
      @min = nil 
    elsif @data_store.length == 1
      @data_store.delete_at(0)
      @data_store = []
      @back = 0
      @max = 0
      @min = 0
    elsif @data_store.length > 1
      @data_store.delete_at(0)
      @back = @data_store[-1]
      @max = @data_store.max 
      @min = @data_store.min
    end
    self
  end 



end 