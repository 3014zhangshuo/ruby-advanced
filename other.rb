class Preson
  @@bar = "123"

	def initialize(name)
		@name = name
	end

	def foo
		@name
	end

	def self.bar
		@@bar
		@name # not same
	end

	def name=(name)
		@name = name
	end

	attr_accessor :name

  def name
   	@name
  end
end

module Myutil
  def self.foobar
 	  puts "foobar"
  end
end

module Mixin
  def foo
 	  puts "foo"
  end

  module ClassMethods
  	def bar
  		puts "bar"
  	end
  end
end

class A
	include Mixin
end

A.new.foo # => "foo"
# include 会变成 instance_method
# extend 会变成 class_method


class MyClass
	include Mixin
	extend Mixin::ClassMethods
end

# rails Concern
module Foo
	extend ActionSupport::Concern

	included do
		belongs_to :user
	end

	class_methods do
	  def self.xxx
  	  # work
    end
	end

  def self.xxx
  	#not work
  end

  def foo
  end

  def bar
  end
end

# duck typing 即使不同类，只要介面一致就可以

class Duck
  def quack
  	puts ""
  end
end

class Mallard
	def quack
		puts ""
	end
end

birds = [Duck.new, Mallard.new, Object.new]

birds.each do |duck|
	duck.quack if duck.respond_to? :quack #呼叫是否有这个方法
end

# java interface
# swift protocal
