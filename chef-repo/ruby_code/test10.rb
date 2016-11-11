module AwesomeInc
	class Awesomeclass
		attr_accessor :acc_attr
		def initialize(awesome_level)
		@acc_attr = awesome_level
		end
		def self.awesome_static_method
		puts "This is static method"
		end
		def awesome_non_static_method
		puts "This is non static method"
		@acc_attr
		end
	end
end

foo = AwesomeInc::Awesomeclass.new(10)
bar = AwesomeInc::Awesomeclass.new(20)
foo.acc_attr = 40
puts foo.acc_attr
puts bar.acc_attr
#AwesomeInc::Awesomeclass.awesome_non_static_method
print "#{foo.awesome_non_static_method}"

AwesomeInc::Awesomeclass.awesome_static_method