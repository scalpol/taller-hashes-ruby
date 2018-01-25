meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

new_hash = {}
meses.length.times do |i|
  new_hash[meses[i]] = ventas[i]
end

h = {}
new_hash.each do |m, d|
  h[d] = m
end
new_hash = h

def mayor(pormes)
  mayor = 0
  mes = nil
  pormes.each_key do |d|
    if d > mayor
      mayor = d
      mes = pormes[d]
    end
  end
end
