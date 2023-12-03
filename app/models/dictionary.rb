class Dictionary < ApplicationRecord
  self.table_name = "dictionaries"
  validates :title, :presence => true

  belongs_to :user
  has_many :words
  has_many :flashcards
end