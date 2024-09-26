json.extract! phone_call, :id, :start_time, :end_time, :caller, :receiver, :duration, :provider, :user_id, :created_at, :updated_at
json.url phone_call_url(phone_call, format: :json)
