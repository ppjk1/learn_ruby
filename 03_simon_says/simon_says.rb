#write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 1)
  repeated_str = str
  if n == 1
    repeated_str += " " + str
  else
    (n-1).times do
      repeated_str += " " + str
    end
  end

  repeated_str
end

def start_of_word(str, n)
  str[0..(n-1)]
end

def first_word(str)
  str.split()[0]
end

def titleize(str)
  words = str.split
  titlecase = []
  littlewords = ["a", "an", "the", "and", "of", "for", "over"]
  words.each_with_index do |word, index|
    if littlewords.include? word and index > 0
      titlecase.push(word)
    else
      titlecase.push(word.capitalize)
    end
  end
  titlecase.join(" ")
end
