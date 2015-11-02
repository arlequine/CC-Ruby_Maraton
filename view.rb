class View

	def welcome_message
		puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta.  
		Listo?(presiona enter)  Arranca el juego!"  

	end

	def show_quizz(quizz)
		puts quizz
	end

	def show_score(trues, falses)
		puts "Respuestas Incorrectas: #{falses}  Respuestas Correctas: #{trues}"
	end

	def message_end
		puts "Se termino el juego y tus resultados son:"
	end

	def tes_response(resp, qual)
		puts "Intento #{resp}"
		if qual == false
			puts "Incorrecto!"
		else
			puts "Correcto"
		end
	end

end