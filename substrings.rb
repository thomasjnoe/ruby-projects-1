def substrings(string, subs)
    str = string.downcase
    frequencies = Hash.new(0)
    subs.each do |sub|
        offset = 0
        while str.index(sub, offset).nil? == false
            frequencies[sub] += 1
            offset = str.index(sub, offset) + 1
        end
    end
    frequencies
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)