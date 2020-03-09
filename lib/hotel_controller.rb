module Hotel
  class HotelController 
    # Option 1) hotel rooms (int) --> reservations (contains a date_range object)
    # Optiona 2) hotel rooms (Room objects) --> Room --> reservations (contains a date_range object)

    attr_accessor :hotel_rooms, :reservations
    attr_reader 

    def initialize()
      @hotel_rooms = []
      @reservations = []
    end

    # Wave 1
    def rooms 
      @hotel_rooms = [] 
      room_number = 0
      while room_number < 20 do 
        room_number += 1 
        @hotel_rooms << room_number 
      end 
        return @hotel_rooms 
    end

    # def verify_available(hotel_rooms, date)
    #   if room_available == true #true if rooms is available
    #     return 
    #   end
    # end

    # lists avialable rooms
    # def open_rooms()
    #   available_room = [] #array of available rooms
    #   @reservations.each do |room| # iterates through the array of rooms
    #   end
    # end

    # reserves a room aka creates a reservation
    # takes two Date objects and returns a Reservation ex: (reservation).must_be_kind_of Hotel::Reservation
    def reserve_room(start_date, end_date, room_number, rate) 
      reservation = Hotel::Reservation.new(start_date, end_date, room_number, rate)
      @reservations << reservation
      return reservation
    end

    # takes a Date and returns an array of Reservations by date and the 
    def reservations_by_date(date)

      return #an array
    end

    # Wave 2
    # locate avaialable rooms by two dates and returns an array
    def available_rooms(start_date, end_date)
      # Loop through all reservations
      # create an empty array will store all available rooms
      @reservations.each do |reservation|
        # everytime reservation.available? returns true add this reservation to the reservations array
      end
      # return the reservations array



    #  available_room = @hotel_rooms 

      #   if reservation.include?(start_date == start_date, end_date = end_date)
      #     raise ArgumentError "Sorry, there is no room available on those days."
      #   else
      #   # need to compare the start/end date to current reservations


      #   # return an array 
      #   end
      
    end
  
    #   @hotel_rooms.each do |room_num|
    #     if room_num.available(start_date, end_date) == true
    #     available_room << room_num
    #     end
    #     if available_room.length == 0
    #       raise DateError.new("There are no rooms open for that date")
    #     else
    #       return available_room
    #     end
      # end
    #   # start_date and end_date should be instances of class Date
  
  end
end
