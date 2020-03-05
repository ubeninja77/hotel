require_relative "hotel_controller"

module Hotel
  class DateRange
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = Date.parse(start_date) #string?
      @end_date = Date.parse(end_date)
        if @end_date <= @start_date
          raise ArgumentError.new "Invalid date. Your start date cannot be after your end date."  
        end
    end

    def overlap?(start_date,end_date)
      if start_date <= end_date && start_date >= end_date #parse through dates and check if output is str
        return false 
      end
    end

    def include?(date) #
      # if date == start_date raise ArgumentError "Sorry, that is not a vaild date." #arg error needed?
      if date >= start_date && date <= end_date
        return true
      else 
        return false 
      end
    end

    def nights
      # pulls from the 
      # need to return the number of nights per ressie
      return 3
    end
  end
end
