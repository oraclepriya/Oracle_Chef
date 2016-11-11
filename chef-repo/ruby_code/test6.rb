module Oracle_repo
class Oracle_vagrant
	attr_accessor :name
	
	def initialize (tmp_value)
	puts "im in constructor Oracle_vagrant"
	@name = tmp_value
	end
end
class Oracle_vagrant_1
	attr_accessor :name
	
	def initialize (tmp_value_1)
	puts "im in constructor_Oracle_vagrant_1"
	@name = tmp_value_1
	end
end
end

instance1 = Oracle_repo::Oracle_vagrant.new("instance1")
#instance2 = Oracle_repo::Oracle_vagrant.new("instance2")
instance2 = Oracle_repo::Oracle_vagrant_1.new("instance2")
instance1.name="ppriyasree"
instance2.name = "oracle_Ltd"
puts instance1.name
puts instance2.name

puts "instance1 class type is #{instance1.class}"
puts "instance1 class type is #{instance2.class}"
