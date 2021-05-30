#link files
require_relative './game_questions'
require_relative './user'
require_relative './title'
require_relative 'json'
database = File.read("./json_storage.json")
users = json.parse(?????)  #what goes in the brackets?

#link gems
require 'tty-prompt'
require 'rainbow'
require 'pastel'
require 'lolcat'
require 'artii'
require 'colorize'


# clear terminal
# welcome
# "login" or "new user" - gets: name, role (mumm/pappa), child's name, child's age
# game menu - start game (0-4yo child)(not part of MVP), start game (5-10yo child)
# start game
# view results





# I don't know where these go! Should it be in the User class .rb file? (line 28-41)
users.each do |key, user|
    score = 0
    user["scores"].each do |score|
        total_score += score.to_i
    end
    puts ""

    change user names:

users.each do |user|
    users 

current_user = user.new(users.first["username"], users.first["role"])





total_points = 0
question = GameQuestion.new("Good moring, has your child woken up to their alarm?", {"yes": 5, "no": 0})
question.ask_question
total_points += question.select_option
puts total_points



# # ------------------------
# main body
# # ------------------------

system 'clear'
# welcome
# I want to link the title.txt file here and use the "lolcat" gem for the entire app.

# login/new user menu - use tty-prompt formatting


#game menu - use tty-prompt formatting








puts "Welcome #{current_user.username}"
puts "Your role is #{current_user.role}" 



















# puts Rainbow("this is red").red + " and " + Rainbow("this is linen on fuchsia bg").linen.bg(:fuchsia) + " and " + Rainbow("peachpuff!").peachpuff

# puts Rainbow("hola!").blue.bright.blink

# prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
# # =>
# # Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select)
# # ‣ Scorpion
# #   Kano
# #   Jax

