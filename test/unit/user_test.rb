require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
  	user = User.new
  	user.profile_name = 'RyanGAllen'
  	user.email = 'allenryan14@gmail.com'
  	user.first_name = 'Ryan'
  	user.last_name = 'Allen'
  	user.password = 'citrus12'
  	user.password_confirmation = 'citrus12'

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
end
