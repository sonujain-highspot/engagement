class CreatePhoneCalls < ActiveRecord::Migration[7.2]
  def change
    create_table :phone_calls do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :caller
      t.string :receiver
      t.integer :duration
      t.string :provider
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
