class CreateFlashcards < ActiveRecord::Migration[7.1]
  def change
    create_table :flashcards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.references :dictionary

      t.timestamps
    end
  end
end
