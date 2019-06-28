puts "Codigo para geenerar una contraseña random."

def password_random

	datas = [
		%w[1 2 3 4 5 6 7 8 9], 
		%w[q w e r t y u i o p a s d f g h j k l z x c v b n m], 
		%w[Q W E R T Y U I O P A S D F G H J K L Ñ Z X C V B N M], 
		%w[;  _  + ` ¡ = ¿ ? !  @ · $ % & / \ | – # ¢ . ¬ ÷ ]
	]

	password_length = rand(12..20)
	password = ""

	for i in(0..password_length)
		
		data_random = rand(datas.length)
		element_data_random = rand(datas[data_random].length)

		password += datas[data_random][element_data_random].to_s
		
	end

	return password.to_s


end

puts "La contraseña es: " + password_random