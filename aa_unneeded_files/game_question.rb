class GameQuestion
    def initialize(question, options)
        @question = question
        @options = options
    end

    def ask_question
        puts @question

    end

    def select_option
        ##some select option tty prompt
        ##use @options
        #return points for select option
        answer = gets.chomp.downcase
        score = 0
        @options.each do |key, value|
            if answer.to_sym == key 
                if value.class == Hash
                    pp value
                end
                score +=value 
            end
        return score
    end

    def calculate_points

    end

end