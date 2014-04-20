class UniqueChecker
  def self.check_uniq s
    return false if s.nil?
    hash = {}
    s.each_char do |c|
      if hash.has_key? c
        return false
      else
        hash[c] = true
      end
    end 
    return true
  end
end
