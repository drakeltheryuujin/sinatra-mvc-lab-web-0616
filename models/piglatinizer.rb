class PigLatinizer
  
  attr_accessor :string

  def piglatinize(string)
    vowels = ["a", "e", "i", "o", "u"]

      if vowels.any? {|v| string[0].downcase.include?(v)}
        string += "way"
      else
        first_vowel = string.downcase.scan(/[aeiou]/).first
        until_vowel = string.partition(first_vowel).first
        string.sub!(until_vowel, "")
        string += until_vowel + "ay"
      end
    string
  end

  def to_pig_latin(string)
     isolate = string.split
     isolate.each_with_object([]) do |word, array|
       array << piglatinize(word)
     end.join(" ")
  end

end

# class PigLatinizer

  # attr_accessor :text
 
  
  
  # def piglatinize(text) 
   # vowels=[]
    # text.downcase.scan(/[aeiou]/) do |c|
      # vowels << [c, $~.offset(0)[0]]
    # end

    # first_v_index=vowels.first.last

    # if first_v_index==0 
      # text+="way"
    # else
      # text= text[first_v_index..-1]+text[0...first_v_index]+"ay"
    # end

  # end

  
  # def to_pig_latin(text)
    # text.split(" ").map do |word|
      # self.piglatinize(word)
    # end.join(" ")
  # end


 
# end
