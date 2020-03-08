module Hotel
  class Reservation

    attr_reader :guest_id, :room_number, :start_date, :end_date, :rate, :reservations

    # ROOM_RATE = 200

    # Feel free to change this method signature as needed. Make sure to update the tests!
    def initialize(start_date, end_date, room_number, rate = 200)
      @start_date = start_date
      @end_date = end_date
      @room_number = room_number 
      @rate = rate
    end

    # calculates the total of each reservation
    def cost
      total_cost = (@end_date - @start_date).to_i * rate
      return total_cost
    end
  end
end
