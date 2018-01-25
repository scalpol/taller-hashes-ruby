h = { 'x' => 1, 'y' => 2 }

h['z'] = 3

h['x'] = 5

h.delete('y')

puts 'yeaaah' if h.key?('z')

new_h = {}
h.each do |k, v|
  new_h[v] = k
end
h = new_h
