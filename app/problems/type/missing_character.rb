class GFG
  def missing_chars(str)
    max_chars = 26
    present = []
    for i in 0..(max_chars - 1)
      present[i] = false
    end
    str_result = ""
    
    for i in 0..(str.size - 1)
      if 'A' <= str[i] && str[i] <= 'Z'
        present[str.getbyte(i) - 'A'.getbyte(0)] = true
      elsif 'a' <= str[i] && str[i] <= 'z'
        present[str.getbyte(i) - 'a'.getbyte(0)] = true
      end
    end
    
    for i in 0..(max_chars - 1)
      if present[i] == false
        str_result += (i + 'a'.getbyte(0)).chr
      end
    end
    str_result
  end
end
