class Oracle_vagrant
	attr_accessor :name
	
	def initialize (tmp_value)
	puts "im in constructor"
	@name = tmp_value
	end
	
end

instance1 = Oracle_vagrant.new("instance1")
instance2 = Oracle_vagrant.new("instance2")

instance1.name="ppriyasree"
puts instance1.name
