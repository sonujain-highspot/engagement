require "application_system_test_case"

class RecordingsTest < ApplicationSystemTestCase
  setup do
    @recording = recordings(:one)
  end

  test "visiting the index" do
    visit recordings_url
    assert_selector "h1", text: "Recordings"
  end

  test "should create recording" do
    visit recordings_url
    click_on "New recording"

    fill_in "Duration", with: @recording.duration
    fill_in "Recordableable", with: @recording.recordableable_id
    fill_in "Recordableable type", with: @recording.recordableable_type
    fill_in "Url", with: @recording.url
    click_on "Create Recording"

    assert_text "Recording was successfully created"
    click_on "Back"
  end

  test "should update Recording" do
    visit recording_url(@recording)
    click_on "Edit this recording", match: :first

    fill_in "Duration", with: @recording.duration
    fill_in "Recordableable", with: @recording.recordableable_id
    fill_in "Recordableable type", with: @recording.recordableable_type
    fill_in "Url", with: @recording.url
    click_on "Update Recording"

    assert_text "Recording was successfully updated"
    click_on "Back"
  end

  test "should destroy Recording" do
    visit recording_url(@recording)
    click_on "Destroy this recording", match: :first

    assert_text "Recording was successfully destroyed"
  end
end
