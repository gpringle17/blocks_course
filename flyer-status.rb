class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)
frequentflyers=flyers.select{|flyer| flyer.miles_flown>=3000}
puts frequentflyers
infrequentflyers=flyers.reject{|flyer| flyer.miles_flown>=3000}
puts infrequentflyers
puts flyers.any?{|flyer|flyer.status==:platinum}
bronze_flyer=flyers.detect{|flyer|flyer.status == :bronze}
puts bronze_flyer

platinum, other= flyers.partition{|flyer| flyer.status == :platinum}
puts "Platinum Club"
p platinum
puts "Everybody Else"
p other
nametag=flyers.map{|flyer| "#{flyer.name} (#{flyer.status.upcase})"}
p nametag
kilo_flown=flyers.map{|flyer| flyer.miles_flown*1.6}
p kilo_flown
total_miles_flown=flyers.map{|flyer|flyer.miles_flown}.reduce(:+)
puts "Total Miles Flown: #{total_miles_flown}"
#total_kilo_flown=flyers.map{|flyer|flyer.miles_flown*1.6}.reduce(:+)
total_kilo_flown=flyers.reduce(0){|sum,flyer|sum+(flyer.miles_flown*1.6)}
puts "Total Kilometer Flown: #{total_kilo_flown}"

# bronze_flyer,other=flyers.partition{|flyer|flyer.status==:bronze}
# bronzeflyermiles=bronze_flyer.reduce(0){|sum,flyer| sum + (flyer.miles_flown*1.6)}
# puts "Total Bronze Flyer Miles: #{bronzeflyermiles}"

bronzeflyermiles=flyers.select{|f| f.status==:bronze}.map {|f|f.miles_flown*1.6}.reduce(:+)
puts "Total Bronze Flyer Miles: #{bronzeflyermiles}"
topflyer=flyers.max_by{|flyer|flyer.miles_flown}
puts "#{topflyer}"
leastfrequentflyer=flyers.min_by{|flyer|flyer.miles_flown}
puts "#{leastfrequentflyer}"