class ChangeDictionariesToWordbooks < ActiveRecord::Migration[7.1]
  rename_table :dictionaries, :wordbooks
end
