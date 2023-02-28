module MyGem
  module Problems
    module String
      class CommomCharacters
        def self.find(strings)
          char_count = Array.new(26, 0)

          strings[0].each_char do |char|
            char_count[char.ord - 'a'.ord] += 1
          end

          (1...strings.length).each do |i|
            current_count = Array.new(26, 0)
            strings[i].each_char do |char|
              current_count[char.ord - 'a'.ord] = 1
            end
            char_count.each_with_index do |count, index|
              char_count[index] = [count, current_count[index]].min
            end
          end

          result = []
          ('a'..'z').each do |char|
            if char_count[char.ord - 'a'.ord] > 0
              result.push(char)
            end
          end
          result
        end
      end
    end
  end
end
