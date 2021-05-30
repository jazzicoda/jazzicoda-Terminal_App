# Print "The Judged Parent" at the top of terminal
require './title.txt'


# I want to run the text file using the lolcat gem to see which of the text styles i like best, then I want to choose just one of the title blocks in title.txt



class Title
    def initialize(title)
        @title = title
        system("clear")
        title = File.read('title.txt')
        puts ""
        puts ""
        puts "Welcome to The Judged Parent!"
        puts "The game that will judge your choices, no matter your answer."
        puts ""
        puts ""  
    end
    
end

title