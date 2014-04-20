class SameComponents
  def self.same_components? s1, s2
    return false if s1.length != s2.length
    hash = {} 
    s1.each_char do |c1|
      if hash.has_key? c1
        hash[c1] += 1
      else
        hash[c1] = 1
      end
    end

    s2.each_char do |c2|
      if hash.has_key? c2
        hash[c2] -= 1
        return false if hash[c2] < 0
      else
        return false
      end
    end
    return true
  end
end

