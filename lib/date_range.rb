module Hotel
  class DateRange
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
        if @end_date <= @start_date
          raise DateError "Invalid date. Your start date cannot be after your end date."  
        end
    end
 
    def overlap?(date_range)
      if start_date <= end_date && end_date >= start_date
        return true
      end
    end

    def include?(date) 
      if date >= start_date && date <= end_date
        return true
      else 
        return false 
      end
    end

    def nights
      length_of_stay = (@end_date - @start_date).to_i
      return length_of_stay
    end
  end
end
