class Flyer
	attr_reader :name, :email, :miles_flown
	def initialize(name,email,miles_flown)
		@name=name
		@email=email
		@miles_flown=miles_flown
	end
	def to_s
		"#{name} (#{email}): #{miles_flown}"
	end
end
flyers=[]
1.upto(5) {|n|flyers<<Flyer.new("Flyer #{n}","flyer#{n}@example.com",n*1000)}
puts flyers
flyers.each do |flyer|
	puts "#{flyer.name} - #{flyer.miles_flown} miles"
end
total=0
flyers.each do|flyer|
	total+=flyer.miles_flown
end
puts "Total miles flown: #{total}"

promotions= {"United"=>1.5,"Delta"=>2.0,"Lufthansa"=>2.5}
promotions.each do |key,values|
	puts "Earn #{values}x miles by flying #{key}!"
end
stuff={"chocolate"=>2.0,"vanilla"=>1.5,"cinnamon"=>2.5}
stuff.each do |type,price|
	puts "$#{price} for a cup of #{type}."
end