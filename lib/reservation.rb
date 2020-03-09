module Hotel
  class Reservation

    attr_reader :guest_id, :room_number, :rate, :date_range

    # ROOM_RATE = 200

    # Feel free to change this method signature as needed. Make sure to update the tests!
    def initialize(start_date, end_date, room_number, rate = 200)
      @date_range = DateRange.new(start_date, end_date)
      @room_number = room_number 
      @rate = rate
    end

    # calculates the total of each reservation
    def cost
      total_cost = @date_range.nights.to_i * rate
      return total_cost
    end
    # 
    def available?(start_date, end_date)
      # This  fails if end date is afer the end date in date_range but start date is within range; returns false
      return !(@date_range.include?(start_date) && @date_range.include?(end_date))
    end
  end
end
