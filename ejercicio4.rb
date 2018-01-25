personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

new_hash = {}
personas.length.times do |i|
  new_hash[personas[i]] = edades[i]
end

def age_avg(hash)
  (hash.inject(0) { |sum, (_, y)| sum + y }) / hash.length
end
