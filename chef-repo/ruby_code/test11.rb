module Awesomemodule
	
	def add(a, b)
	a+b
	end

end

class Awesomeclass
include Awesomemodule	
attr_accessor :a, :b
	def initialize (a, b)
	@a = a
	@b = b
	end
	def adding
	add (@a, @b)
	end
end

foo = Awesomeclass.new(10,20)
result = foo.adding
puts "#{result}"