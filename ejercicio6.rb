restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def plato_mas_caro(menu)
  m = menu.first[1]
  plato = nil
  menu.each do |f, c|
    if c > m
      m = c
      plato = f
    end
  end
  plato
end

def plato_mas_barato(menu)
  m = menu.first[1]
  plato = nil
  menu.each do |f, c|
    if c < m
      m = c
      plato = f
    end
  end
  plato
end

def promedio(menu)
  (menu.inject(0) { |sum, (_, c)| sum + c }) / menu.length
end

def nombres(menu)
  menu.keys
end

def valores(menu)
  menu.values
end

def con_iva(menu)
  menu.each { |f, c| menu[f] = c * 1.19 }
end

def descuento(menu)
  menu.each do |f, c|
    menu[f] = c * 0.8 if f.include?(' ')
  end
end
