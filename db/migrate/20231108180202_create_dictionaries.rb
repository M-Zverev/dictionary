class CreateDictionaries < ActiveRecord::Migration[7.1]
  def change
    create_table :dictionaries do |t|
      t.string :title, null: false
      t.references :user
      t.timestamps
    end

    create_table :words do |t|
      t.string :word, null: false
      t.string :translation, null: false
      t.string :transcription
      t.text :usage_example
      t.references :dictionary
      t.timestamps
    end
  end
end
