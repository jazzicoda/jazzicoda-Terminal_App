# --------------#
#   LINK GEMS   #
# --------------#
require 'tty-prompt'
require 'lolcat'
require 'artii'
require 'colorize'

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
    puts "Good moring, has your child woken up to their alarm? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end 

    #q2
    puts
    puts "Have they had breakfast? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score -= 5;
        end 

    #q3
    puts
    puts "Did they go to school today? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score -= 5;
        end 

    #q4
    puts
    puts "Did you work while they were at school? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end 
    
            
    #q5
    puts
    puts "Lunchtime! Did you pack them a healthy lunch? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end 
    

    #q6
    puts
    puts "It's 3pm, are you at the school chatting to other parents, waiting for your kid? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end

    #q7
    puts
    puts "Do they go to at least one after school activity each week? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end

    #q8
    puts
    puts "Time for dinner. Did you cook dinner tonight? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score -= 5;
        end

    #q9
    puts
    puts "Have they brushed their teeth? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score -= 10;
        end

    #q10
    puts
    puts "Is Bed time earlier than 8pm? (yes/no)"
    answer = gets.chomp.downcase
        if answer == "yes"
            score += 5; 
        else
            score += 0;
        end 
    total_score = score
    puts "You have made it to the end of the day! Would you like to know your score #{@user_name.capitalize}?".colorize(:blue) 
    puts 'Select "View-score" below.'.colorize(:blue)
    puts
end
##QUESTIONS_END

def view_score
    system 'clear'
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Scores!').colorize(:magenta)
    # print "#{@user_role.capitalize} #{@user_name.capitalize}, you scored #{@total_score}!"
    # incorporate score outputs if possible:
    # If score is <10, puts "You should really reconsider being a parent."


    # If score is 11-20, puts "You could try a little harder. It's not brain surgery you know"
    
    
    # If score is 21-30, puts "You're ok mate! Not cream of the crop, but could be worse."
    
    
    # If score is 31-40, puts "Are you trying to be a good parent? Keep trying."
    
    
    # If score is 41-50, puts "So crunchy mummy, you think you're all that huh??."

    # "But at the end of the day, you will always do the best for your child. Haters gonna hate, so keep your chin up {mumma/pappa}. If you are now, or choose to become a parent, you got this!" ##using Espeak Gem to say it##
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
        all_questions
    when 2
        view_score
    when 3
        help
    when 4
        exit
    end
end

# --------------#
#   GAME OVER   #
# --------------#