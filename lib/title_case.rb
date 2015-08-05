class String
  define_method(:title_case) do
    dont_capitalize = ["the", "of", "and", "in", "for", "on"]
    capitalized_words = downcase().split(" ").each do |word|
      word.capitalize!() if !dont_capitalize.include?(word)
    end
    capitalized_words[0].capitalize!()
    capitalized_words.join(" ")
  end
end
