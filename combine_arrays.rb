numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

deck = []
suits.each do |suit|
	numbers.each do |number|
		deck << [number, suit]
	end
end 

result = numbers.product(suits)
#result.map {|stuff| stuff.reverse }

animals = %w(cow chicken sheep)

def find_longest(sentence)
	sentence.sort_by! {|word| word.length }
	sentence[-1]
end

puts find_longest(animals)

def long(sentence)
	sentence.group_by(&:size).max.last
end

#{|item| item.count} is same as &:count
#animals.max_by(&:count)

def longest(array)
	array.max { |a, b| a.length <=> b.length}
end

animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]

def convert_total(array)
  new_hash = {}
  array.each do |item|
  	animal = item[0]
  	num = item[1]
	  if new_hash.has_key?(animal)
	  	new_hash[animal] += num
	  else
	  	new_hash[animal] = num
	  end
  end
  new_hash
end

result = animals.inject({}) do |memo, (animal,num)|
	if memo[animal] 
		memo[animal] += num
	else
		memo[animal] = num
	end
	memo
end

puts result

results = animals.inject({}) do |memo, (animal,num)|
	memo[animal] ? memo[animal] += num : memo[animal] = num
	memo
end

puts results

resultss = animals.inject(Hash.new(0)) do |memo, (animal, num)|
	memo[animal] += num
	memo
end

puts resultss