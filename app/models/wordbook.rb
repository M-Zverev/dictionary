class Wordbook < ApplicationRecord
  self.table_name = "wordbooks"
  validates :title, :presence => true

  belongs_to :user
  has_many :words
  has_many :flashcards
end