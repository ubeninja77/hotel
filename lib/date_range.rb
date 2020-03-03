module Hotel
  class DateRange
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
    end

    def overlap?(start_date,end_date)
      if start_date 
        return false
      end
    end

    def include?(date)
      if start_date 
        return false
      end
    end

    def nights
      return 3
    end
  end
end
