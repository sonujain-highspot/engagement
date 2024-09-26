class CreateMeetings < ActiveRecord::Migration[7.2]
  def change
    create_table :meetings do |t|
      t.string :title
      t.integer :duration
      t.string :provider
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
