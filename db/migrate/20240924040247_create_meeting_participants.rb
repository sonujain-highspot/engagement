class CreateMeetingParticipants < ActiveRecord::Migration[7.2]
  def change
    create_table :meeting_participants do |t|
      t.references :participant, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
