<img src="docs/jasmine_readme.jpg" alt="readme" width=100%/><br>
===============
TERMINAL APP DOCUMENTATION
===============

Presented by: Jasmine Ofaolain
------------------------------
Assignment: T1A3
------------------------------

## GITHUB REPO
For access to the GitHub Repository for this app, [CLICK HERE](https://github.com/jazzicoda/jazzicoda-Terminal_App).

## STATEMENT OF PURPOSE
Modern day parenting is a balancing act! Be “too caring” towards your child and you are judged as being “crunchy”. Breastfeed you child and be judged as a lactivist! Bottle feed your child and be judged for not giving your child the best start to life. Feed your kid processed food? Look out, you will be judged! It really is a minefield out there! 

This app is a tongue-in-cheek game considering some of those concepts - lets see if you really are a terrible parent.

## WHAT DOES THE APP DO?
"The Judged Parent Game" is a short and sweet 'game'. It asks various questions throughout one day in the life the player's "child" (real or fictitious, you decide). Actions are scrutinised and responses are scored. 

As the user makes their way through the game questions, they are asked whether their "child" (or the "parent/carer") has completed certain tasts throughout the day. These tasks are then scored and the player is given an accumulated score at the end of the game.

At the end of the day there is generally a happy ending.

## WHAT PROBLEM IS THIS APP SOLVING?
World hunger and world peace.... are NOT going to be solved by this app! It is just a bit of frivilous fun. Since becoming a parent myself, it is obvious how everyone has VERY STRONG opinions of how we should parent our kids. This is simply a fun little game to shine a light on this social norm, and maybe make the player consider their future judgements.

## TARGET AUDIENCE
The target audience for this app/game is parents, or those wanting to be parents, or anyone really. It is a small insight into being a parent, so anyone who has an interest could play this game.

## APP FEATURES
<img src="docs/feature_one.png" alt="readme" width=400/><br>
This feature utilises the GETS method and USER INPUT to gather information about the user. If the user is playing for the first time, their name is pushed to the users.txt file within the src directory. This will alter how the welcome message displays - whether they receive the 'new user' intro, or the 'welcome back' user. 

User is then asked whether they identify as "Mumma", "Pappa" or "Carer" - this will accept any input string so it is customisable depending on how the user identifies themselves. This data is used to customise the welcome message, but is not stored. 

<img src="docs/feature_twoA.png" alt="readme" width=400><br>
<img src="docs/feature_twoB.png" alt="readme" width=100%/><br>
The TTY-Prompt Gem has been utilised for simple, clean aesthetics. It helps to make the Game Menu easy to follow and user friendly.
A choice array has been used to feed the four menu options into the prompt command.

A loop has been utilised with a case method to display the list of menu items, and keep returning to the menu once the user has finished with each feature of the game.

<img src="docs/feature_threeA.png" alt="readme" width=500/><br>
<img src="docs/feature_threeB.png" alt="readme" width=500/><br>
The ‘yes’ or ‘no’ answer of each question has a score value associated with it
User input received using gets.chomp.downcase
The method calculates the score correctly, and is stored in a score variable
Incorrect user input is handled with rescue-retry-end method

The score variable is called
using string interpolation in
the View-score area
User name and roles are used 
to personalise to score output
Depending on the score, a 
different message is displayed
All users receive the “But at the
end of the day” message
All users receive the Gillian Anderson quote
Espeak Gem is used to speak the Gillian Anderson quote.


## FLOW CHART
Below are the flow charts for my app. 

### Initialise and run program until games menu: <br>
This illustrates the flow of information and the relationships from the moment the program is launched, up until game menu is launched and a selection from the menu is made.
<img src="docs/terminal_app_flowchart-Feature 1 - Menu and User Login.jpg" alt="readme" width=500/><br>

### Game play <br>
This flowchart ilustrates the order of questions as well as the allocation of points for each question. Once game play is initiated, the flow is very linial, only wavering to include the allocation of points.
<img src="docs/flowchart_questions.png" alt="readme" width=800/><br>


## IMPLEMENTATION PLAN 
The implimentation of this app took place in three main stages:
- Planning
- Coding
- Refactoring (ongoing)

## PROJECT MANAGEMENT
Trello was used for project management throughout the project. I created multiple lists and cards from the assignment brief and created check boxes within each card to keep track of individual tasks. Dates were assignend to some cards to ensure I kept on track and the project would be completed on time.

Colour coding was used to signify when items were "In Progress" (orange), "Complete" (green), or "Urgent" (red) 

I took regular screenshots of the use of Trello board throughout the project. 


But you can see the rest of them [HERE](https://docs.google.com/document/u/2/d/e/2PACX-1vTv5MLhcjZVJTID-RodnFd9oYD89nNbIfeOWxKo1DkSruCfaxzoYbQhUk6mHS_Y9mrHi-2D7oAb0hCQ/pub).


## HELP DOCUMENTATION




## REFERENCES

