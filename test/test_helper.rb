# Add simplecov
require "minitest"
require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'simplecov'
SimpleCov.start
# Require_relative your lib files here!
require_relative '../lib/room'
# require_relative '../lib/reservation'
# require_relative '../lib/date_range'
# require_relative '../lib/hotel'


describe "Room instantiation" do
  before do
    @reservation = Hotel::Room.new
  end

  it "is an instance of Room" do
    expect(@room_availability).must_be_kind_of Hotel::Room
  end
end