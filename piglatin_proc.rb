# rewrite of the first version but using more procedural programming
# examples

SYSTEM_OS = "xnix" #"windows"

def running_platform
  # function to return us a value of the system we are running on for
  # us to program around anything that isn't platform independent
  
  return SYSTEM_OS
end

def clear_screen
  # function to clear the terminal screen using a system dependant call
  case running_platform
  when "windows"
    `cls`                       # another way to write system(cls) function
  when "xnix"
    `clear`
  end
end

def print_prompt
  puts "Enter a sentence to translate inot pig latin: "
end

def get_input
  input = gets 
end

def process_input(inp)
  words, pigwords = inp.split, []
  

  words.each do |word|
    pigwords << translate_word(word)
  end

  puts (pigwords.join " ")
end

def translate_word(str)
  # going to ignore cases where there are numbers or invalid chars
  # 3 cases... vowel first, no vowel and vowel somewhere else
  
  newstr = str
  unless (str =~ /\W|\d/)
    vowels = /[aeiou]/ 
    first_vowel = str =~ vowels
    if first_vowel == nil || first_vowel == 0
      newstr = str + "yay"
    else 
      newstr = str.sub(/(.*?)([aeiou].*)/, '\2\1ay')
    end
  end
  return newstr
end

def run_program
  # start of the interface 
  clear_screen
  print_prompt

  process_input(get_input)
end


run_program
