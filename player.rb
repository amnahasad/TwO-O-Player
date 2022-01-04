class Player

    attr_reader :lives
    
    def initialize(name)
        @name = name
        @lives = 3
    end

    def lose_a_life
        @lives -= 1
    end

    def lose_all_lives
        @lives = 0
    end
end