json.extract! participant, :id, :name, :email, :phone_number, :created_at, :updated_at
json.url participant_url(participant, format: :json)
