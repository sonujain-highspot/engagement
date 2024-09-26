class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commentable, polymorphic: true, null: false
      t.integer :visibility
      t.text :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
