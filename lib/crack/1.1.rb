class UniqueChecker
  def self.check_uniq s
    return false if s.nil?
    return false if !s.is_a?(String)
    hash = {}
    s.each_char do |c|
      if hash.has_key? c
        puts "Found duplicate key, #{c}"
        return false
      else
        hash[c] = true
      end
    end 
    return true
  end
end
