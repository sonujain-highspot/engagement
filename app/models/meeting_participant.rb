class MeetingParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :meeting
end
