module Problems
  module String
    def self.group_words(words)
      groups = {}
      words.each do |word|
        key = word.chars.sort.join
        if groups.key?(key)
          groups[key] << word
        else
          groups[key] = [word]
        end
      end
      groups.values
    end
  end
end
