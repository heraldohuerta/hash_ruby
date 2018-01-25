###########################################################################
####################   EJERCICIO1  ########################################
###########################################################################
h = {:claveuno => 10,:clavedos => 20,:clavetres => 30}
h1 = {claveuno:10,clavedos:20,clavetres:30}



###########################################################################
####################   EJERCICIO2  ########################################
###########################################################################
puts "productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}"
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# 1. Se tiene el siguiente hash: y se realiza la siguiente consulta para conocer los productos existentes:Corrige el error para mostrar la información solicitada.
productos.each { |producto,valor | puts producto }

# 2. Se quiere agregar un nuevo producto al hash: Corrige la instrucción para agregar el producto.
# producto[2200] = cereal
productos['cereal'] = 2200
puts productos
puts ""

# 3. Se quiere actualizar el precio de la bebida:Corrige la instrucción para actualizar el valor del producto existente.
productos['bebida'] = 2000
puts productos
puts ""

# 4. Convertir el hash en un array y guardarlo en una nueva variable.
nuevo = []
nuevo = productos.to_a
print nuevo
puts ""

# 5. Eliminar el producto 'galletas' del hash./
productos.delete('galletas')
puts productos
puts ""

###########################################################################
####################   EJERCICIO3  ########################################
###########################################################################
 h = {"x": 1, "y":2}
# Agregar el string z con el valor 3.
h['z'] = 3
puts h
puts ""
# Cambiar el valor de x por 5.
h[:x] = 5
puts h
puts ""

# Eliminar la clave y.
h.delete(:y)
puts h
puts ""
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
h.select {|valor| puts "yeeah" if valor == :z }

# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
puts h.invert
puts ""
b = h.inject({}) {|m,(e,y)| m[y] = e; m }
puts b
