class CreateRecordings < ActiveRecord::Migration[7.2]
  def change
    create_table :recordings do |t|
      t.references :recordableable, polymorphic: true, null: false
      t.integer :duration
      t.string :url

      t.timestamps
    end
  end
end
