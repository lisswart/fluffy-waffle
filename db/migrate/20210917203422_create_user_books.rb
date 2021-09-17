class CreateUserBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_books do |t|
      t.string :read_status
      t.text :description
      t.string :tag
      t.text :notes
      t.text :review
      t.boolean :is_notes_added
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
