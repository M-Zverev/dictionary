class ChangeWordbooksToDictionaries < ActiveRecord::Migration[7.1]
  rename_table :wordbooks, :dictionaries
end
