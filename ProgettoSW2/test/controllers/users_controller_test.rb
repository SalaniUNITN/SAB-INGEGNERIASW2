require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { cap: @user.cap, cf: @user.cf, city: @user.city, email: @user.email, name: @user.name, p_iva: @user.p_iva, street_name: @user.street_name, street_number: @user.street_number, surname: @user.surname, telephone: @user.telephone } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { cap: @user.cap, cf: @user.cf, city: @user.city, email: @user.email, name: @user.name, p_iva: @user.p_iva, street_name: @user.street_name, street_number: @user.street_number, surname: @user.surname, telephone: @user.telephone } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end