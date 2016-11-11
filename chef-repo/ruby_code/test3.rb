class Oracle_Vagrant_image
	
	def initialize(tmp_value)
	puts "this is in initialize"
	@my_global = tmp_value
	end
	
	def my_get
	  tmp_value1 = "tmp_value1"

	  @my_global
	end
end

instance1 = Oracle_Vagrant_image.new("chef_image")
puts "instance1 type #{instance1.class}"

instance2 = Oracle_Vagrant_image.new("weblogic_image")
puts "instance2 type #{instance2.class}"

puts instance1.my_get
puts instance2.my_get






=begin
awesome_sauce = Awesome.new
awesome_sauce2 = Awesome.new
puts "awesome_sauce2 type #{awesome_sauce2}"
puts "awesome_sauce type #{awesome_sauce}"
=end