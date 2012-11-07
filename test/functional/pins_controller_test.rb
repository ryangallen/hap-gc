require 'test_helper'

class PinsControllerTest < ActionController::TestCase
  setup do
    @pin = pins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pins)
  end

  test "should be redirected when not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to login_path
  end

  test "should render the new page when logged in" do
    sign_in users(:Ryan)
    get :new
    assert_response :success
  end

  #test "should be logged in to post a pin"
   # post :create, pin: { desc: "Hello" }
   # assert_response :redirect
  #  assert_redirected_to new_user_session_path
  #end

  test "should create pin when logged in" do
    sign_in users(:Ryan)
    assert_difference('Pin.count') do
      post :create, pin: @pin.attributes
    end
  end

  test "should show pin" do
    get :show, id: @pin
    assert_response :success
  end

  test "should get edit when logged in" do
    sign_in users(:Ryan)
    get :edit, id: @pin
    assert_response :success
  end

 # test "should redirect pin update when not logged in" do
 #   put :update, id: @pin, pin: { desc: @pin.desc }
 #   assert_response :redirect
 #   assert_redirected_to new_user_session_path
#end

  test "should update pin when logged in" do
    sign_in users(:Ryan)
    put :update, id: @pin, pin: @pin.attributes
    assert_redirected_to pin_path(assigns(:pin))
  end

  test "should destroy pin" do
    assert_difference('Pin.count', -1) do
      delete :destroy, id: @pin
    end
    assert_redirected_to pins_path
  end
end