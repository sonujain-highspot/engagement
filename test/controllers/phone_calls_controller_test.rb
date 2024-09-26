require "test_helper"

class PhoneCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_call = phone_calls(:one)
  end

  test "should get index" do
    get phone_calls_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_call_url
    assert_response :success
  end

  test "should create phone_call" do
    assert_difference("PhoneCall.count") do
      post phone_calls_url, params: { phone_call: { caller: @phone_call.caller, duration: @phone_call.duration, end_time: @phone_call.end_time, provider: @phone_call.provider, receiver: @phone_call.receiver, start_time: @phone_call.start_time, user_id: @phone_call.user_id } }
    end

    assert_redirected_to phone_call_url(PhoneCall.last)
  end

  test "should show phone_call" do
    get phone_call_url(@phone_call)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_call_url(@phone_call)
    assert_response :success
  end

  test "should update phone_call" do
    patch phone_call_url(@phone_call), params: { phone_call: { caller: @phone_call.caller, duration: @phone_call.duration, end_time: @phone_call.end_time, provider: @phone_call.provider, receiver: @phone_call.receiver, start_time: @phone_call.start_time, user_id: @phone_call.user_id } }
    assert_redirected_to phone_call_url(@phone_call)
  end

  test "should destroy phone_call" do
    assert_difference("PhoneCall.count", -1) do
      delete phone_call_url(@phone_call)
    end

    assert_redirected_to phone_calls_url
  end
end
