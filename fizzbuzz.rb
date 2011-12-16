#!/usr/bin/env ruby

require 'rspec'

class FizzBuzz
  
  attr_accessor :number_1, :number_2, :word_1, :word_2
  
  def initialize(args = {})
    args.each do |k,v|
      instance_variable_set "@#{k}", v
    end
  end
  
  def check(num)
    value = "#{num}"
    number_3 = @number_1*@number_2
    if num%number_3 == 0
      value = "#{@word_1}#{@word_2}"
    elsif num%@number_1 == 0
      value = word_1
    elsif num%@number_2 == 0
      value = word_2
    end
    return value
  end
  
  def print_range(end_point)
    (1..end_point).each do |i|
      puts "#{check(i)}"
    end
  end

end

describe FizzBuzz do
  
  obj = FizzBuzz.new(:number_1 => 3,
                     :number_2 => 5,
                     :word_1 => "Fizz",
                     :word_2 => "Buzz") 

  it "shoud return 1 when called with 1 " do
    obj.check(1).should == "1"
  end
  
  it "should return Fizz when called with 3" do
    obj.check(3).should == "Fizz"
  end
  
  it "should return Buzz when called with 5" do
    obj.check(5).should == "Buzz"
  end
  
  it "should return FizzBuzz when called with 15" do
    obj.check(15).should == "FizzBuzz"
  end

end
  

@obj = FizzBuzz.new(:number_1 => 3,
                    :number_2 => 5,
                    :word_1 => "Fizz",
                    :word_2 => "Buzz")                    

@obj.print_range(100)