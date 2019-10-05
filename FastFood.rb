def Init
  $good = 0
  $fast = 0
  $breakfast = 0
  Questionaire()
end

def Questionaire
  print "What Kind of food do you feel like? \n"
  print "1: Good food \n"
  print "2: Something Fast \n"
  print "3: Breakfast \n"
  choice = 0
  until choice.between?(1,3)
    print "1, 2, or 3: "
    choice = gets().to_i
  end
  if choice == 3
    puts "ur getting Denny's bitch"
    abort "Denny's makes the program crash rip"
  elsif choice == 2
    $fast += 1
  else
    $good += 1
  end
  puts
  print "Are you in a hurry? \n"
  print "Y/N: "
  choice = gets().chomp
  if choice.downcase == "n"
    puts "Okay, next question."
  else
    $fast += 1
  end
  puts
  if $fast == 2
    time = 0
    until time.between?(1, 12)
      print "What time is it, to the nearest hour?: "
      time = gets().to_i
    end
    ampm = ""
    until ampm == "am" or ampm == "pm"
      print "AM or PM?: "
      ampm = gets().chomp.downcase
    end
    if ampm == "pm" and time.between?(11,12) or time == 1
      puts "With the time being so close to lunch, your best bet would be Mac Donalds, or Burger King"
      abort "Have a nice day"
    else
      x = rand(1..2)
      if x == 2
        puts "Ur going to Mac Donalds"
        return
      else
        puts "Ur going to Burger King"
      end
    end
  end
  corb = ""
  until corb.downcase == "chicken" or corb.downcase == "beef"
    print "Do you feel like chicken, or beef?: "
    corb = gets().chomp
  end
  if corb.downcase == "chicken"
    puts "Wendy's is the way to go"
  else
    puts "I think the Burger King is for you"
  end
end

Init()
