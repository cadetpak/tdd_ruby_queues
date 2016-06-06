#include Queue class in spec file
require_relative 'queue'
#enacts Rspec library, calls 'describe' method that takes in class 'Queue' and expects it to 'do' something
RSpec.describe Queue do 
  describe 'attributes' do
  	before do 
  	  @queue1 = Queue.new
  	  @queue2 = Queue.new
  	end #ends before 
  	  it 'has attribute "data_store" that displays array of values in stack' do 
  	    expect(@queue1.data_store).to eq([])
  	  end 
  	  it 'has attribute "back" that displays last value in stack(0 by default)' do
  	    expect(@queue1.back).to eq(0)
  	  end 
  	  it 'raises error if user tries to set "back" attribute' do 
  	  	expect{@stack1.back(5)}.to raise_error(NoMethodError)
  	  end 
  	  it 'has attribute "max" that keeps track of max value in array' do 
  	    expect(@queue1.enqueue(5).enqueue(10).max).to eq(10)
  	    expect(@queue2.enqueue(10).enqueue(5).max).to eq(10)
  	  end 
  	  it 'has attribute "min" that keeps track of min value in array' do 
  	    expect(@queue1.enqueue(5).enqueue(10).min).to eq(5)
  	    expect(@queue2.enqueue(5).enqueue(10).dequeue.min).to eq(10)
  	  end 
  end #ends describe 'attributes' 
  describe 'methods' do
    before do 
      @queue1 = Queue.new
      @queue2 = Queue.new
    end #ends before 
    it 'has method "enqueue" that adds value (parameter) to back of array' do 
      expect(@queue1.enqueue(5).data_store).to eq([5])
      expect(@queue2.enqueue(5).enqueue(10).data_store).to eq([5,10])
    end 
    it 'has method "dequeue" that removes first value in stack' do 
      expect(@queue1.enqueue(5).enqueue(10).dequeue.data_store).to eq([10])
      expect(@queue2.enqueue(5).dequeue.data_store).to eq([])
    end 
    it 'method "dequeue" returns "nil" if empty array' do 
      expect(@queue1.dequeue.data_store).to eq(nil)
    end 
  end #ends describe 'methods'
end #ends Rspec.describe 