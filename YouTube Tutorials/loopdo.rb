hp = 30 
loop do
hp -= 2 
puts "Damage done, hp remaining, #{hp}"
break if hp <= 0
end
puts "Game Over"