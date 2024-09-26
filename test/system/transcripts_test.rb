require "application_system_test_case"

class TranscriptsTest < ApplicationSystemTestCase
  setup do
    @transcript = transcripts(:one)
  end

  test "visiting the index" do
    visit transcripts_url
    assert_selector "h1", text: "Transcripts"
  end

  test "should create transcript" do
    visit transcripts_url
    click_on "New transcript"

    fill_in "Duration", with: @transcript.duration
    fill_in "Transcriptable", with: @transcript.transcriptable_id
    fill_in "Transcriptable type", with: @transcript.transcriptable_type
    fill_in "Url", with: @transcript.url
    click_on "Create Transcript"

    assert_text "Transcript was successfully created"
    click_on "Back"
  end

  test "should update Transcript" do
    visit transcript_url(@transcript)
    click_on "Edit this transcript", match: :first

    fill_in "Duration", with: @transcript.duration
    fill_in "Transcriptable", with: @transcript.transcriptable_id
    fill_in "Transcriptable type", with: @transcript.transcriptable_type
    fill_in "Url", with: @transcript.url
    click_on "Update Transcript"

    assert_text "Transcript was successfully updated"
    click_on "Back"
  end

  test "should destroy Transcript" do
    visit transcript_url(@transcript)
    click_on "Destroy this transcript", match: :first

    assert_text "Transcript was successfully destroyed"
  end
end
