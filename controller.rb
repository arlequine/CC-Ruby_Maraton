=begin
Educational game "Marathon" which operates under a stream
using classes and performing it in an order 'MVC'
=end
require_relative 'model.rb' 
require_relative 'view.rb'

class CardController
	def initialize
		@model = Record.new
		@view = View.new
		run
	end
	def run
		count = 0
		@wrong = false
		@false_count = 0
		@true_count = 0
		@view.welcome_message
		10.times do
			q_list = @model.read
			quizz = @model.search_question(count, q_list)
			answer = @model.search_answer(count, q_list)
			@view.show_quizz(quizz)
			response = user_input
			comparation(response, answer)
			@view.tes_response(response, @wrong)
			count +=1
		end
		@view.message_end
		@view.show_score(@true_count, @false_count)
	end

	def user_input
		answer = gets.chomp
	end

	def comparation(resp, ans)

		if resp == ans
			@true_count +=1
			@wrong = true
		else
			@false_count +=1
			@wrong = false
		end

	end

end
maraton = CardController.new