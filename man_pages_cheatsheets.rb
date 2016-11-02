brad = true

def main_menu()
  puts "--MAIN MENU--"
  puts "1. Command line (a few of our favorites!)"
  puts "2. Search your own"
  puts "3. Exit \n\n"
  puts "How would you like to find a manual?"
  choice = gets.strip.to_i
  if choice > 3
    main_menu()
  else
    choice
  end
end

def commands_menu()
  puts "--COMMANDS MENU--"
  puts "1. cp"
  puts "2. mkdir"
  puts "3. cat"
  puts "4. Back to main menu"
  puts "Which man would you like today?"
  selection = gets.strip.to_i
  command_menu_choices(selection)
end

def search
  choice = gets.strip
  puts `man #{choice}`
end

def command_menu_choices(param)
  case param
  when 1
    puts `man cp`
  when 2
    puts `man mkdir`
  when 3
    puts `man cat`
  when 4
    main_menu
  else
    exit
  end
end

while brad
  case main_menu
  when 1
    commands_menu
  when 2
    puts "Enter a man search term:"
    search
  when 3
    brad = false # exit - had exit as command before like line 50, but this is another way
  end
end

