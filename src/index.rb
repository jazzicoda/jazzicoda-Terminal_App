# --------------#
#   LINK FILES  #
# --------------#
# require_relative './user'


# --------------#
#   LINK GEMS   #
# --------------#
require 'tty-prompt'
require 'lolcat'
require 'artii'
require 'colorize'


# # clear terminal DONE
# # welcome DONE
# # "login" or "new user" - gets: name, role (mamma/pappa), DONE
# # game menu DONE
# # start game
# # view results
# # help

# --------------#
#   METHODS     #
# --------------#
def questions
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Lets Play!').colorize(:magenta)
    puts "Questioning"
end

def view_score
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Scores!').colorize(:magenta)
    puts "viewing is good"
end

def help
    arti = Artii::Base.new :font => 'slant'
    puts arti.asciify('Help!').colorize(:magenta)
    puts "Helping"
end

# --------------#
#   CLASSES     #
# --------------#



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
# @new_user = new_user(name, role) how to add the role to the user?
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
# @selected_choice = prompt.select("What would you like to do?", %w(Start-game View-scores Quit)).colorize(:blue)

def menu(prompt)
    choices = [
        {name: "Start-game", value: 1},
        {name: "View-scores", value: 2},
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
        puts questions
    when 2
        puts view_score
    when 3
        puts help
    when 4
        exit
    end
end

# --------------#
#   QUESTIONS   #
# --------------#


# @selected_choice = prompt.select("What would you like to do?", %w(Start-game View-scores Quit)).colorize(:blue)
# puts @selected_choice




# --------------#
#   SCORES      #
# --------------#


# users.each do |key, user|
#     score = 0
#     user["scores"].each do |score|
#         total_score += score.to_i
#     end
#     puts ""

#     change user names:

# users.each do |user|
#     users 

# current_user = user.new(users.first["username"], users.first["role"])





# total_points = 0
# question = GameQuestion.new("Good moring, has your child woken up to their alarm?", {"yes": 5, "no": 0})
# question.ask_question
# total_points += question.select_option
# puts total_points


# --------------#
#   HELP        #
# --------------#


