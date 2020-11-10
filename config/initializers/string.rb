class String 
    def to_balance_format
        if self.upcase.count('C') == 1
            return self.gsub('.', '').gsub(',', '.').to_f * -1
        else
            return self.gsub('.', '').gsub(',', '.').to_f
        end

    end


    def string_between_markers marker1, marker2
  	  self.scan(/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m)
    end
  
end

