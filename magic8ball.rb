require "colorize"
require "pry"

@answers = ["Yes", 
            "No", 
            "Hell Yes", 
            "Hell No",
            "Hell If I Know", 
            "As I See It... Maybe?", 
            "True Dat", 
            "Ask Again During Normal Business Hours", 
            "Hmmmm... Doubt It", 
            "That's Gonna Be A No",
            "They say there are no stupid questions... but that was a stupid question", 
            "Yo No Hablo Inglés", 
            "Sorta Maybe", 
            "Naw", 
            "Outlook Hazy", 
            "I promised I wouldn't tell you",
            "Spoiler Alert... No",
            "You Already Asked Me That",
            "Yes, But Try To Act Surprised",
            "Indubitably", 
            "Fo’ Shizzle",
            "Kind Of"
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
    print "I'm thinking..........".colorize(:blue)
    sleep(1)
    print ".".colorize(:blue)
    sleep(1)
    print ".".colorize(:blue)
    sleep(1)
    print ".".colorize(:blue)
    sleep(1)
    puts ".".colorize(:blue)
    answer
  end  

  def add
    puts "Add an answer".colorize(:green)
    puts ">".colorize(:green)
    input = gets.to_s.strip
    if @answers.include?(input)
    puts "Invalid".colorize(:red)
    menu
    elsif input == "quit"
      quit
    else
    @answers << input
    puts "#{@answers.last} has been added".colorize(:yellow)
    #binding.pry
    menu
  end 
end

  def reset
    puts "Preparing to reset answers".colorize(:blue)
    sleep(2)
    @answers = @answers2
    puts "Answers reset".colorize(:yellow)
    menu
  end 

  def printall
    puts @answers
    sleep(3)
    menu
  end 
 
  def answer
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts @answers.sample.colorize(:cyan)
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    sleep(3)
    menu
  end


  menu