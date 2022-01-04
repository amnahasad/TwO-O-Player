class Player

    def initialize
        @lives = 3
    end

    attr_reader :lives

    def lose_a_life
        @lives -= 1
    end

    def lose_all_lives
        @lives = 0
    end
end