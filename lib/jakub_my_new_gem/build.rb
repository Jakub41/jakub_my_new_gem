module JakubMyNewGem

  class Build
    def initialize total:, gratuity:
      @total = total
      @gratutity = gratuity
    end

    def generate
      return calculation if number_based?
      string_based
    end

    def number_based?
      (@gratutity.is_a? Numeric) || (@gratutity.integer?)
    end

    def string_based
      case @gratutity.downcase
        when 'high'     then calculation 25
        when 'standard' then calculation 18
        when 'low'      then calculation 15
      end
    end

    def calculation gratuity = @gratutity
      @total += @total * (gratuity.to_f / 100)
    end
  end
  
end