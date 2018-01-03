scores=[83,71,92,64,98,87,75,69]
# puts "High Scores"
# high_scores=scores.select {|s| s>80}
# puts high_scores
# puts "Low Scores"
# low_scores=scores.reject{|s| s>80}
# puts low_scores
# puts scores.any?{|s| s<70}
# puts scores.detect{|s|s<70}
# puts scores.find_all{|s|s<70}
# scores.select! {|s|s>70}
# p scores
# scores.reject! {|s|s.even?}
# p scores
scores_doubled=scores.map{|scores| scores*2}
p scores_doubled
total=scores.reduce{|sum,score| sum+score}
puts total
total=scores.reduce(0,:+)
puts "Total score: #{total}"
even, odd=scores.partition{|scores|scores.even?}
p even
p odd