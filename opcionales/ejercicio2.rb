nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

new_1 = nombres.select { |i| i.length > 5 }

new_2 = nombres.map(&:downcase)

new_3 = nombres.select { |i| i[0] == 'P' }

new_4 = nombres.map(&:length)

new_5 = nombres.map { |i| i.downcase.gsub(/[aeiou]/, '') }
