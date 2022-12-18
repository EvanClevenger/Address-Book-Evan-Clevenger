require "test_helper"

class FullapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fullapplication = fullapplications(:one)
  end

  test "should get index" do
    get fullapplications_url
    assert_response :success
  end

  test "should get new" do
    get new_fullapplication_url
    assert_response :success
  end

  test "should create fullapplication" do
    assert_difference("Fullapplication.count") do
      post fullapplications_url, params: { fullapplication: { SSN: @fullapplication.SSN, birthday: @fullapplication.birthday, country: @fullapplication.country, email: @fullapplication.email, first_name: @fullapplication.first_name, last_name: @fullapplication.last_name, phone_number: @fullapplication.phone_number, state: @fullapplication.state, street_address: @fullapplication.street_address, suffix: @fullapplication.suffix, town: @fullapplication.town, zip_code: @fullapplication.zip_code } }
    end

    assert_redirected_to fullapplication_url(Fullapplication.last)
  end

  test "should show fullapplication" do
    get fullapplication_url(@fullapplication)
    assert_response :success
  end

  test "should get edit" do
    get edit_fullapplication_url(@fullapplication)
    assert_response :success
  end

  test "should update fullapplication" do
    patch fullapplication_url(@fullapplication), params: { fullapplication: { SSN: @fullapplication.SSN, birthday: @fullapplication.birthday, country: @fullapplication.country, email: @fullapplication.email, first_name: @fullapplication.first_name, last_name: @fullapplication.last_name, phone_number: @fullapplication.phone_number, state: @fullapplication.state, street_address: @fullapplication.street_address, suffix: @fullapplication.suffix, town: @fullapplication.town, zip_code: @fullapplication.zip_code } }
    assert_redirected_to fullapplication_url(@fullapplication)
  end

  test "should destroy fullapplication" do
    assert_difference("Fullapplication.count", -1) do
      delete fullapplication_url(@fullapplication)
    end

    assert_redirected_to fullapplications_url
  end
end
