module FunWithStrings
  def palindrome?
    pal = self.downcase.gsub(/\W/, '')
 
    pal == pal.reverse
  end
  def count_words
    count = {}

    array = self.downcase.gsub(/\W/, ' ').split(/\s+/)
  
    
    array.each do |x|
      if count.has_key?(x) && x != ''  
        count[x] += 1
      elsif x != ''
        count[x] = 1
      end
    end
    count
  end
  def anagram_groups
   anag = {}
  
   array = self.downcase.gsub(/\W/, ' ').split(/\s+/)

   array.each do |x|
     
     order = x.split('').sort.join('')
     if anag[order].nil?
       anag[order] = []
     end
     anag[order] << x
   end
   anag.values
   
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end