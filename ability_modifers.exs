# La extensión exs indica que no debe genera una versión compilada
# Se usa en scripts sencillos
user_input = IO.gets "Write your ability score: "
{ ability_score, _ } = Integer.parse(user_input)
ability_modifier = (ability_score - 10) / 2
IO.puts "Your ability modifier is #{ability_modifier}"
