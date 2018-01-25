productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each_key { |producto| puts producto }

productos['cereal'] = 2200

productos['bebida'] = 2000

new_arr = productos.to_a

productos.delete('galletas')
