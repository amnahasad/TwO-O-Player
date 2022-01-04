class Question

    def initialize
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @sum = @num + @num2
    end


    def question
        puts "What does #{@num1} plus #{@num2} equal?"
    end

    def check_correct_answer(answer)
        @sum = answer
    end
end