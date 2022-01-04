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
        else @current_player = @player_1
        end
    end

    def winner(name, lives)
        puts "#{name} wins with a score of #{lives}/3"
        puts "----- Game Over -----"
        puts "Good bye!"
        exit(0)
    end


    def start_game
        puts @welcome
        count = @current_player.lives
        while count >= 1 do
            question = Question.new(@current_player)
            question.print_question
            @user_input = gets.chomp
            if question.check_correct_answer(@user_input)
                puts "Yes! You are correct"
            else 
                puts "Seriously? No!"
                @current_player.lose_a_life
            end
            if @current_player.lives < 1 
                if @current_player.name == @player_1.name
                winner(@player_2.name, @player_2.lives)
                else
                winner(@player_1.name, @player_1.lives)
                end  
            end
            show_scores
            switch_current_player
            count = @current_player.lives  
        end
    end
end