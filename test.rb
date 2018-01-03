

 class Person
 	attr_accessor :age
 	def initialize(age=0)
		@age=age
	end
	def <=>
	end
end
a=Person.new(1)
b=Person.new(5)
c=Person.new(25)
people=[b,a,c]


people.sort_by{|s|s.<=>}
p people
