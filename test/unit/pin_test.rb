require 'test_helper'

class PinTest < ActiveSupport::TestCase

  test "that a pin requires description" do
	pin = Pin.new
	assert !pin.save
	assert !pin.errors[:desc].empty?
  end

  test "that pin description is at least two characters" do
  	pin = Pin.new
  	pin.desc = "h"
  	assert !pin.save
  	assert !pin.errors[:desc].empty?
  end

   test "that a pin has a user id" do
  	pin = Pin.new
  	assert !pin.save
  	assert !pin.errors[:user_id].empty?
  end
end
