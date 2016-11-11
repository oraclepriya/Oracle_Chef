module Oracle_module
	class Oracle_class1
		attr_accessor :oracle
		def initialize(oracle_value)
		@oracle = oracle_value
		end
	end
end

class Oracle_class2 < Oracle_module::Oracle_class1
end

weblogic = Oracle_class2.new(10)
OracleObj = Oracle_module::Oracle_class1.new(20)
puts weblogic.oracle
puts OracleObj.oracle

