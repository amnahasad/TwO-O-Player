class Game

    def initialize
        @player_1 = Player.new('Player 1')
        @player_2 = Player.new('Player 2')
    end

    def show_scores
        puts "P1: #{Player_1.lives}/3 vs P2: #{Player_2.lives}/3"
        puts "----- NEW TURN -----"
    end

end