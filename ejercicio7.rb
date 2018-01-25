inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion = 0
until opcion == 7 do
  puts "¿Que desea hacer?\n1) agregar item\n2) eliminar item\n3) actualizar informacion\n4) ver stock total\n5) item mayor stock\n6) item en inventario?\n7) salir"
  opcion = gets.chomp.to_i

  case opcion

  when 1
    puts 'Ingrese item y stock (ej: "Pendrives, 100")'
    new_item = gets.chomp.split(', ')
    inventario[new_item[0].to_sym] = new_item[1]
    puts "Ingresado"

  when 2
    puts 'Que item desea eliminar? (ej: "Notebooks")'
    inventario.each_key { |i| puts i }
    erase_item = gets.chomp.to_sym
    inventario.delete(erase_item)
    puts "Borrado."

  when 3
    puts 'Que item desea actualizar? (ej: "Notebooks")'
    inventario.each_key { |i| puts i }
    update_old = gets.chomp.to_sym
    puts "Con que desea actualizar #{update_old} (ej: \"Pendrives, 100\")"
    update_new = gets.chomp.split(', ')
    inventario.delete(update_old)
    inventario[update_new[0].to_sym] = update_new[1]
    puts "Actualizado.\n"

  when 4
    total = inventario.inject(0) { |sum, (_, c)| sum + c }
    puts "El stock total es de #{total} productos."

  when 5
    mayor = ''
    costo = 0
    inventario.each do |i, c|
      if c > costo
        costo = c
        mayor = i
      end
    end
    puts "El item con mayor stock es: #{mayor}"

  when 6
    puts "Que producto quiere saber si esta en inventario?"
    item = gets.chomp
    if inventario.include?(item.to_sym)
      puts "Si!"
    else
      puts "No :("
    end
    
  end
end
