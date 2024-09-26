json.extract! transcript, :id, :transcriptable_id, :transcriptable_type, :duration, :url, :created_at, :updated_at
json.url transcript_url(transcript, format: :json)
