def suma_edades(alumnos)
  alumnos.inject(0) { |sum, alumno| sum + alumno[:edad] }
end

alumnos = [{nombre: 'claudio', edad: 24, comuna: 'providencia', genero: 'masculino'}]
opciones = [ '(1) Ingresar datos', '(2) Editar datos', '(3) Eliminar datos', '(4) Total de personas ingresadas', '(5) Mostrar comunas', '(6) Personas entre 20 y 25 años', '(7) Suma de edades', '(8) Promedio de edades', '(9) Personas segun genero', '(10) Salir']
seleccion = 0

until seleccion == 10
  puts 'Que quiere hacer?'
  opciones.each { |opcion| puts opcion }
  seleccion = gets.chomp.to_i

  case seleccion

  when 1
    agregar = {}
    print 'Ingrese nombre: '
    agregar[:nombre] = gets.chomp.downcase
    print 'Ingrese edad: '
    agregar[:edad] = gets.chomp.to_i
    print 'Ingrese comuna: '
    agregar[:comuna] = gets.chomp.downcase
    print 'Ingrese genero: '
    agregar[:genero] = gets.chomp.downcase
    alumnos.push(agregar)
    puts 'Ingresado correctamente'

  when 2
    puts 'Los datos de quien quiere actualizar?'
    alumnos.each { |alumno| puts alumno[:nombre] }
    alumno = gets.chomp.downcase
    alumno = alumnos.select { |a| a[:nombre] == alumno }[0]
    print "Ingrese nueva edad de #{alumno[:nombre]} (previo = #{alumno[:edad]}): "
    alumno[:edad] = gets.chomp.to_i
    print "Ingrese nueva comuna de #{alumno[:nombre]} (previo = #{alumno[:comuna]}): "
    alumno[:comuna] = gets.chomp.downcase
    print "Ingrese nuevo género de #{alumno[:nombre]} (previo = #{alumno[:genero]}) "
    alumno[:genero] = gets.chomp.downcase
    alumnos.each do |i|
      if i[:nombre] == alumno[:nombre]
        alumnos.delete(i)
        alumnos.push(alumno)
      end
    end
    puts 'Cambios efectuados.'

  when 3
    puts 'A quien desea eliminar?'
    alumnos.each { |alumno| puts alumno[:nombre] }
    eliminar = gets.chomp.downcase
    alumnos.each do |i|
      if i[:nombre] == eliminar
        alumnos.delete(i)
      end
    end

  when 4
    cantidad = alumnos.count
    puts "Hay #{cantidad} persona(s) ingresada(s) en el sistema."

  when 5
    comunas = []
    alumnos.each { |alumno| comunas.push(alumno[:comuna]) unless comunas.include?alumno[:comuna] }
    puts 'Las comuna(s) guardada(s) son:'
    comunas.each { |i| puts i.capitalize }

  when 6
    puts 'Las persona(s) que tienen entre 20 y 25 años son: '
    alumnos.each { |alumno| puts alumno[:nombre] if alumno[:edad] > 19 && alumno[:edad] < 26 }

  when 7
    print 'La suma de las edades de todas las personas es: '
    puts suma_edades(alumnos)

  when 8
    print 'El promedio de las edades del grupo es: '
    puts suma_edades(alumnos) / alumnos.count

  when 9
    por_genero = alumnos.group_by { |alumno| alumno[:genero] }
    por_genero.each do |genero|
      puts "#{genero[0].capitalize}:"
      genero[1].each { |alumno| puts alumno[:nombre] }
    end

  end
end
