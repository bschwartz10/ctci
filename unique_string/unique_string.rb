class UniqueString

  # def self.compute(string)
  #   unique = true
  #   characters = {}
  #   string.chars.each do |character|
  #     if characters[character]
  #       unique = false
  #     else
  #       characters[character] = 1
  #     end
  #   end
  #   unique
  # end

  # def self.compute(string)
  #   unique = true
  #   string.chars.reduce(Hash.new) do |agg, char|
  #     agg[char] ? unique = false : agg[char] = 1
  #     agg
  #   end
  #   unique
  # end

  def self.compute(string)
    string.chars.reduce(Hash.new(0)) do |agg, char|
      return false if agg[char] == 1
      agg[char] +=1
      agg
    end
    true
  end

end
