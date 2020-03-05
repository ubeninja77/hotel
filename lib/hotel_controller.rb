module Hotel
  class HotelController

    attr_accessor :start_date, :end_date, :room_number

    def initialize
      @start_date = start_date
      @end_date = end_date
      @room_number = room_number
    end

    # Wave 1
    def rooms 
      hotel_rooms = [] # empty array of hotel room numbers
      room_number = 1 # start of the hotel room numbers
      while room_number <= 20 do # the number of hotel rooms are less than 20, a loop runs
        room_number += 1 # this adds to the room number, by increments of 1
        hotel_rooms << room_number # shovels the room number into the hotel_rooms array
      end 
        return hotel_rooms 
    end

    def reserve_room(start_date, end_date)
      # start_date and end_date should be instances of class Date
      # rooms = find_rooms(room_number)
      reservation = Hotel::Reservation.new(start_date: start_date,end_date: end_date,room_num: room_number)
      return reservation
    end

    def reservations(date)
    # need to access ressie by date (iterate through array?)
      return []
    end

    # Wave 2
    def available_rooms(date)
      # start_date and end_date should be instances of class Date
      return []
    end
  end
end
