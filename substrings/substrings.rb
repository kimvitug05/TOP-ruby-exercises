# [Project: Sub Strings](https://www.theodinproject.com/courses/ruby-programming/lessons/sub-strings)

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
    word_count = Hash.new(0)
    input.split.each do |string|
        dictionary.each do |word|
            if string.downcase.include? word
                word_count[word] += 1
            end
        end  
    end
    puts word_count
end

substrings("Howdy partner, sit down! How's it going?", dictionary)