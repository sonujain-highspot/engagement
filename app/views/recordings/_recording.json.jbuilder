json.extract! recording, :id, :recordableable_id, :recordableable_type, :duration, :url, :created_at, :updated_at
json.url recording_url(recording, format: :json)
