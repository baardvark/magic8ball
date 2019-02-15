require "colorize"
require "pry"

@answers = ["Yes", 
            "No", 
            "Hell Yes", 
            "Hell No",
            "It Is Certain", 
            "As I See It... Maybe?", 
            "Ask Again Later", 
            "Mmmmm... Doubt It", 
            "They say there are no stupid questions... but that was a stupid question", 
            "Yo No Hablo Inglés", 
            "Aw Hell No!", 
            "True Dat", 
            "Definitely Maybe", 
            "Nope!", 
            "Outlook Hazy", 
            "I promised I wouldn't tell you",
            "Spoiler Alert... No",
            "You Already Asked Me That",
            "No, But Try To Act Surprised"
            ]
 @answers2 = @answers.clone           

def menu
  puts "Welcome to the Magic 8 Ball!".colorize(:green)
  puts "1: Enter a Question".colorize(:green)
  puts "2: Exit".colorize(:green)
  print ">".colorize(:green)
  choice = gets.to_i

  case choice
  when 1
    puts "What's your question?".colorize(:blue)
    print ">".colorize(:blue)
    input = gets.chomp
    case input
    when 'exit'
      exit
    when 'add'
      add
    when 'reset'
      reset
    when 'print'
      printall
    else
    thinking
    end
  when 2
    puts "Thanks for using the Magic 8 Ball!".colorize(:yellow)
    sleep(2)
    print `clear`
    exit
  else
    puts "Invalid choice".colorize(:red)
    menu
  end
  end

  def thinking
    puts "I'm thinking..........".colorize(:blue)
    sleep(1)
    puts ''.colorize(:blue)
    sleep(1)
    puts "".colorize(:blue)
    sleep(1)
    puts "".colorize(:blue)
    anwser
  end  

  def add
    puts "Add an answer".colorize(:green)
    print ">".colorize(:green)
    
    input = gets.to_s.strip
    #if @answers.include?(input)
    #puts "invalid"
    #else
    @answers << input
    #binding.pry
    menu
  end 

  def reset
    puts "Press enter to reset answers".colorize(:blue)
    print ">".colorize(:blue)
    sleep(3)
    @answers = @answers2
    puts "Answers reset"
    menu
  end 

  def printall
    puts @answers
    sleep(3)
    menu
  end 
 
  def anwser
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts @anwsers.sample.colorize(:cyan)
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    sleep(3)
    menu
  end



  menu