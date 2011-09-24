system("cls")
print('Enter a sentence to translate into pig latin: ')
s = gets()
puts()

numwords = s.split.length
s = s.split
i = 0

while i < numwords do
    firstvowel = s[i].index /[aeiou]/
    temp = s[i].slice!(0,firstvowel)
    s[i] = s[i] + temp + "ay"
    print(s[i]," ")
    i += 1
end

puts()