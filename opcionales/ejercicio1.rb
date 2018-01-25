a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

new1 = a.map { |i| i + 1 }

new2 = a.map(&:to_f)

new3 = a.map(&:to_s)

new4 = a.reject { |i| i < 5 }

new5 = a.select { |i| i < 5 }

new6 = a.inject(0) { |sum, i| sum + i }

new7 = a.group_by(&:even?)

new8 = a.group_by { |i| i < 6 }
