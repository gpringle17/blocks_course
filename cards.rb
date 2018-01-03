cards=["Jack","Queen","King","Ace","Joker"]
#cards.shuffle.each {|face|puts "#{face.upcase} - #{face.length}"}
#cards.reverse_each {|face|puts "#{face.upcase} - #{face.length}"}
scores={"Larry"=>10,"Moe"=>8,"Curly"=>12}
scores.each do |key, score|
	puts "#{key} scored a #{score}!"
end