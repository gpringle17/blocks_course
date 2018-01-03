puts "input your data below:"
myString=gets.chomp
ban_list = ["doodyhead","sillypants","dumdum"]
if %w(doodyhead sillypants dumdum).any? {|s| myString.include? s}
	myString.gsub!("doodyhead","")
	myString.gsub!("sillypants","")
	myString.gsub!("dumdum","")
end
puts myString
