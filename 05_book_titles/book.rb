class Book

  # Replaced this automatic getter/setter definition for custom setter
  # attr_accessor :title

  def title
    @title
  end

  def title=(value)
    words = value.split
    no_caps = ["and", "but", "so", "in", "the", "of", "to", "a", "an"]

    words.each_with_index do |word, i|
      if not no_caps.include?(word) or i == 0
        words[i] = word.capitalize
      end
    end

    @title = words.join(" ")
  end

end
