json.extract! meeting, :id, :title, :duration, :provider, :user_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
