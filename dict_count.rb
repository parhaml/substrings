def substrings(string, dictionary)
  working = string.downcase.split" "
  answer = Hash.new(0)
  working.each do |trying|
    dictionary.each do |word|
      if trying.include? word
        answer[word] += 1
      end
    end
  end
  puts answer
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)