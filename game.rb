class Game

    def initialize(welcome)
        @welcome = welcome
        @player_1 = Player.new('Player 1')
        @player_2 = Player.new('Player 2')
        @current_player = @player_1
    end

    def show_scores
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
        puts "----- NEW TURN -----"
    end

    def switch_current_player
        if @current_player == @player_1
            @current_player = @player_2
        else @current_player
        end
    end


    def start_game
        puts @welcome
        show_scores
        question = Question.new()
        question.print_question
        @user_input = gets.chomp
        if question.check_correct_answer(@user_input)
            puts "Yes! You are correct"
        else 
            puts "Seriously? No!"
        end
    end

end