class Oracle
	def raise_method
	puts "before raise"
	raise "method is been raised"
	puts "after the raise"
	end
end

foo = Oracle.new
begin
	foo.raise_method
rescue
	puts "LOOKS LIKE there is some exception"
end

puts "foo type is #{foo.class}"