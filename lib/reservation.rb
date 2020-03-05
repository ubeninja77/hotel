module Hotel
  class Reservation

    attr_reader :guest_id, :room_num, :start_date, :end_date

    # Feel free to change this method signature as needed. Make sure to update the tests!
    def initialize(start_date:, end_date:, room_num:)
      @start_date = start_date
      @end_date = end_date
      @room_number = room_number
      @rate = rate
    end

    # calculates the total of each ressie
    def cost
    # access each reservation
    # add the total dates (access array?)
      return 3 #returns sum of ressie
    end
  end
end
