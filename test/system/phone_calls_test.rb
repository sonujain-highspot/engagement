require "application_system_test_case"

class PhoneCallsTest < ApplicationSystemTestCase
  setup do
    @phone_call = phone_calls(:one)
  end

  test "visiting the index" do
    visit phone_calls_url
    assert_selector "h1", text: "Phone calls"
  end

  test "should create phone call" do
    visit phone_calls_url
    click_on "New phone call"

    fill_in "Caller", with: @phone_call.caller
    fill_in "Duration", with: @phone_call.duration
    fill_in "End time", with: @phone_call.end_time
    fill_in "Provider", with: @phone_call.provider
    fill_in "Receiver", with: @phone_call.receiver
    fill_in "Start time", with: @phone_call.start_time
    fill_in "User", with: @phone_call.user_id
    click_on "Create Phone call"

    assert_text "Phone call was successfully created"
    click_on "Back"
  end

  test "should update Phone call" do
    visit phone_call_url(@phone_call)
    click_on "Edit this phone call", match: :first

    fill_in "Caller", with: @phone_call.caller
    fill_in "Duration", with: @phone_call.duration
    fill_in "End time", with: @phone_call.end_time.to_s
    fill_in "Provider", with: @phone_call.provider
    fill_in "Receiver", with: @phone_call.receiver
    fill_in "Start time", with: @phone_call.start_time.to_s
    fill_in "User", with: @phone_call.user_id
    click_on "Update Phone call"

    assert_text "Phone call was successfully updated"
    click_on "Back"
  end

  test "should destroy Phone call" do
    visit phone_call_url(@phone_call)
    click_on "Destroy this phone call", match: :first

    assert_text "Phone call was successfully destroyed"
  end
end
