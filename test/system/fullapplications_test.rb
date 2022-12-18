require "application_system_test_case"

class FullapplicationsTest < ApplicationSystemTestCase
  setup do
    @fullapplication = fullapplications(:one)
  end

  test "visiting the index" do
    visit fullapplications_url
    assert_selector "h1", text: "Fullapplications"
  end

  test "should create fullapplication" do
    visit fullapplications_url
    click_on "New fullapplication"

    fill_in "Ssn", with: @fullapplication.SSN
    fill_in "Birthday", with: @fullapplication.birthday
    fill_in "Country", with: @fullapplication.country
    fill_in "Email", with: @fullapplication.email
    fill_in "First name", with: @fullapplication.first_name
    fill_in "Last name", with: @fullapplication.last_name
    fill_in "Phone number", with: @fullapplication.phone_number
    fill_in "State", with: @fullapplication.state
    fill_in "Street address", with: @fullapplication.street_address
    fill_in "Suffix", with: @fullapplication.suffix
    fill_in "Town", with: @fullapplication.town
    fill_in "Zip code", with: @fullapplication.zip_code
    click_on "Create Fullapplication"

    assert_text "Fullapplication was successfully created"
    click_on "Back"
  end

  test "should update Fullapplication" do
    visit fullapplication_url(@fullapplication)
    click_on "Edit this fullapplication", match: :first

    fill_in "Ssn", with: @fullapplication.SSN
    fill_in "Birthday", with: @fullapplication.birthday
    fill_in "Country", with: @fullapplication.country
    fill_in "Email", with: @fullapplication.email
    fill_in "First name", with: @fullapplication.first_name
    fill_in "Last name", with: @fullapplication.last_name
    fill_in "Phone number", with: @fullapplication.phone_number
    fill_in "State", with: @fullapplication.state
    fill_in "Street address", with: @fullapplication.street_address
    fill_in "Suffix", with: @fullapplication.suffix
    fill_in "Town", with: @fullapplication.town
    fill_in "Zip code", with: @fullapplication.zip_code
    click_on "Update Fullapplication"

    assert_text "Fullapplication was successfully updated"
    click_on "Back"
  end

  test "should destroy Fullapplication" do
    visit fullapplication_url(@fullapplication)
    click_on "Destroy this fullapplication", match: :first

    assert_text "Fullapplication was successfully destroyed"
  end
end
