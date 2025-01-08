def match(word, list)
  # Your job is to complete the code for this method!
  anagrams = []
  list.each do |item|
    could_be_anagram = true
    if item.length == word.length
      item.downcase.split("").map do |char|
        could_be_anagram = false if !word.downcase.include?(char)
      end
      anagrams << item if could_be_anagram
    else
      could_be_anagram = false
    end
  end
  anagrams
end

match("diaper", ["hello", "worlds", "repair", "zombies", "pants"])
