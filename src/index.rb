# #link files
# require_relative './game_questions'
# require_relative './user'
# require_relative './title'

# #link gems
require 'tty-prompt'
require 'rainbow'
require 'pastel'
require 'lolcat'
require 'artii'
require 'colorize'


# # clear terminal DONE
# # welcome DONE
# # "login" or "new user" - gets: name, role (mamma/pappa), DONE
# # game menu - start game (0-4yo child)(not part of MVP), start game (5-10yo child)
# # start game
# # view results



# --------------#
#   MAIN BODY   #
# --------------#

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

@lines.map { |user| @new_user = false if user.strip == @user_input}

if @new_user
    puts
    puts
    puts "Welcome to 'The Judged Parent Game' #{@user_name.capitalize}!".colorize(:cyan)
    puts
    puts "Have fun analyzing your potantial parenting abilities, I'm sure you will be the best #{@user_role.capitalize} ever!!".colorize(:cyan)
    puts
    File.write("users.txt", "#{@user_input}\n", mode: "a") #not working
else
    puts "Welcome back, we are so happy to see you again!".colorize(:cyan)
    puts "Will your performance improve this time?".colorize(:cyan)
    puts "I'm sure you will be the best #{@user_role.capitalize} ever!".colorize(:cyan)
end

# --------------#
#   GAME MENU   #
# --------------#
# prompt = TTY::Prompt.new
prompt = TTY::Prompt.new(active_color: :blue)
prompt.select("What would you like to do?", %w(Start-game View-scores Quit)).colorize(:blue)




# --------------#
#   QUESTIONS   #
# --------------#





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
