@main = %w[Command\ line Search\ your\ own Exit ]

@commands = %w[ cp mkdir cat ]

def main_menu
  puts "----MAN PAGES MAIN MENU----"
  puts "How would you like to find a manual?"
  @main.each_with_index { |num, i| puts "#{i + 1}. " + num }
  choice = gets.strip.to_i
    case choice
      when 1
        commands
      when 2
        search
      when 3
        puts 'Goodbye'
        exit(0)
      else
        puts 'Please enter a number 1-3'
        main_menu
    end
end

def commands
  puts "-----COMMANDS MENU-----"
  @commands.each_with_index { |cmd, i| puts "#{i + 1}. " + cmd }
  puts "Pick a man page to view:"
  cmd = gets.strip.to_i
    case cmd
      when 1
        puts `man #{@commands[0]}`
      when 2
        puts `man #{@commands[1]}`
      when 3
        puts `man #{@commands[2]}`
      when 4
        main_menu
      else
        exit(0)
    end
end

def search
  puts 'What would you like to search?'
  choice = gets.strip
  puts `man #{choice}`
end

while true
  main_menu
end
