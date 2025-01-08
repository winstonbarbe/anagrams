def match(word, list)
  # Your job is to complete the code for this method!
  list.each do |item|
    could_be_anagram = true
    if item.length == word.length
      item.split("").map do |char|
        p char
      end
    else
      could_be_anagram = false
    end
    p could_be_anagram
  end
end

match("diaper", ["hello", "worlds", "zombies", "pants"])
