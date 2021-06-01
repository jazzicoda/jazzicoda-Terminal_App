# --------------#
#   LINK GEMS   #
# --------------#
require 'tty-prompt'
require 'artii'
require 'colorize'
require 'espeak'

# --------------#
#   METHODS     #
# --------------#
def questions
    system 'clear'
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Lets Play!').colorize(:magenta)
end

##QUESTIONS_START
def all_questions
    score = 0
    #q1 
    puts
    begin 
    puts "Good moring, has your child woken up to their alarm? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "n"
            score += 0;
        elsif answer == "no"
            score += 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end


    #q2
    puts
    begin
    puts "Have they had breakfast? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5;
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 5;
        elsif answer == "n"
            score -= 5;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end 

    #q3
    puts
    begin
    puts "Did they go to school today? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 5;
        elsif answer == "n"
            score -= 5;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry 
    end

    #q4
    puts
    begin
    puts "Did you work while they were at school? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 0;
        elsif answer == "n"
            score -= 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end
    
    
    #q5
    puts
    begin
    puts "Lunchtime! Did you pack them a healthy lunch? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 0;
        elsif answer == "n"
            score -= 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end

    #q6
    puts
    begin
    puts "It's 3pm, are you at the school chatting to other parents, waiting for your kid? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 0;
        elsif answer == "n"
            score -= 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end

    #q7
    puts
    begin
    puts "Do they go to at least one after school activity each week? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 0;
        elsif answer == "n"
            score -= 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        retry
    end

    #q8
    puts
    begin
    puts "Time for dinner. Did you cook dinner tonight? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 5;
        elsif answer == "n"
            score -= 5;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end

    #q9
    puts
    begin
    puts "Have they brushed their teeth? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "no"
            score -= 10;
        elsif answer == "n"
            score -= 10;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end

    #q10
    puts
    begin
    puts "Is Bed time earlier than 8pm? (yes/y or no/n)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        elsif answer == "y"
            score += 5; 
        elsif answer == "n"
            score += 0;
        elsif answer == "no"
            score += 0;
        else
            raise
        end 
    rescue 
        puts "Invalid answer. Please type yes/y or no/n.".colorize(:red)
        sleep(1)
        puts
        retry
    end
    puts "You have made it to the end of the day! Would you like to know your score #{@user_name.capitalize}?".colorize(:blue) 
    puts 'Select "View-score" below.'.colorize(:blue)
    puts
    return score
end
##QUESTIONS_END

def view_score(score)
    system 'clear'
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Scores!').colorize(:magenta)
    puts
    puts
    puts "#{@user_role.capitalize} #{@user_name.capitalize}, your score is #{score}!".colorize(:cyan)
    puts
    puts
    puts "You should really reconsider being a parent.".colorize(:cyan) if score < 10
    puts "You could try a little harder. It's not brain surgery you know".colorize(:cyan) if ( score < 20 and score >= 10 )
    puts "You're ok mate! Not cream of the crop, but could be worse.".colorize(:cyan) if ( score < 30 and score >= 20 )
    puts "Are you trying to be a good parent? Keep trying.".colorize(:cyan) if ( score < 30 and score >= 40 )
    puts 'So "Crunchy mummy", you think you are all that huh??'.colorize(:cyan) + "\u{1f60e}" if score > 40
    sleep(2)
    puts
    puts
    puts "But at the end of the day, you will always do the best for your child. If you are now, or choose to become a parent, you got this!".colorize(:cyan) + "\u{1F929}" 
    sleep(2)
    puts
    puts
    puts "In the words of Gillian Anderson:"
    puts
    puts '"Let`s stop being so damn judgmental and crucifying everyone who doesn`t fit into our boxed-in perceptions of what is right."'.colorize(:magenta)  + " \u{1F64C} \u{1F64C} \u{1F64C}"
    speech = ESpeak::Speech.new("Let's stop being so damn judgmental and crucifying everyone who doesn't fit into our boxed-in perceptions of what is right.")
    speech.speak
    puts
    puts
    puts
    puts
end

def help
    system 'clear'
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Help!').colorize(:magenta)
    puts
    puts 'To play the game, select "Start-game" from the menu below.'.colorize(:blue)
    puts
    puts 'Answer each question with either "yes" or "no" answer.'.colorize(:blue)
    puts
    puts 'Please note: if any character other than yes is entered, the question will be scored as "no".'.colorize(:blue)
    puts
    puts 'After answering all questions, click on "View-score" in the menu to see how you scored.'.colorize(:blue)
    puts
    puts 'To leave the game, simply select "Quit".'.colorize(:blue)
    puts
    puts 'Enjoy your game!'.colorize(:blue)
    puts
end

# ---------------------------#
#   MAIN BODY                #
# ---------------------------#

# --------------#
#   WELCOME     #
# --------------#
system 'clear'
arti = Artii::Base.new
puts arti.asciify('The  Judged').colorize(:cyan)
puts arti.asciify('Parent  Game').colorize(:cyan)

# --------------#
#   "LOGIN"     #
# --------------#
print "Enter user name: ".colorize(:blue)
@user_name = gets.chomp.downcase
print "Do you identify as a 'mamma', 'pappa' or 'carer'? ".colorize(:blue)
@user_role = gets.chomp.downcase

@new_user = true

@lines = File.readlines("users.txt")

@lines.map {|user| @new_user = false if user.strip == @user_name}

if @new_user
    puts
    puts
    puts "Welcome to 'The Judged Parent Game' #{@user_name.capitalize}!".colorize(:cyan)
    puts
    puts "Have fun analyzing your potantial parenting abilities, I'm sure you will be the best #{@user_role.capitalize} ever!!".colorize(:cyan)
    puts
    File.write("users.txt", "#{@user_name}\n", mode: "a") 
else
    puts
    puts
    puts "Welcome back, we are so happy to see you again!".colorize(:cyan)
    puts
    puts "Will your performance improve this time? I'm sure you will be the best #{@user_role.capitalize} ever, this time!".colorize(:cyan)
    puts
end

# --------------#
#   GAME MENU   #
# --------------#
prompt = TTY::Prompt.new(active_color: :blue)

def menu(prompt)
    choices = [
        {name: "Start-game", value: 1},
        {name: "View-score", value: 2},
        {name: "Help", value: 3},
        {name: "Quit", value: 4},
    ]
    prompt.select("What would you like to do?", choices)
end

loop do
    puts "======================================"
    puts
    case menu(prompt)
    when 1
        questions
        @total_score = all_questions
    when 2
        view_score(@total_score)
    when 3
        help
    when 4
        exit
    end
end

# --------------#
#   GAME OVER   #
# --------------#