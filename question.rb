class Question

    def initialize(current_player)
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @sum = @num1 + @num2
        @current_player = current_player.name
    end


    def print_question
        puts "#{@current_player}: What does #{@num1} plus #{@num2} equal?"
    end


    def check_correct_answer(answer)
        @sum == answer.to_i
    end
end