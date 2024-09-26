class CreateTranscripts < ActiveRecord::Migration[7.2]
  def change
    create_table :transcripts do |t|
      t.references :transcriptable, polymorphic: true, null: false
      t.integer :duration
      t.string :url

      t.timestamps
    end
  end
end
