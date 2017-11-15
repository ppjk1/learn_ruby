#write your code here
def translate(str)
  vowels = /^[aeiou]/
  words = str.split
  pig_latin = []

  words.each do |word|
    if word =~ vowels
      pig_latin.push(word + "ay")
    else
      consonants = 0
      word.each_char.with_index do |char, index|
        if char == "u" and word[index-1] == "q"
          consonants += 1
        elsif char =~ vowels
          break
        else
          consonants += 1
        end
      end
      pig_latin.push(word[consonants..-1] + word[0..consonants-1] + "ay")
    end
  end
  pig_latin.join(" ")
end
