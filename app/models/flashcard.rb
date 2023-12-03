class Flashcard < ApplicationRecord
  validates :question, :answer, :presence => true

  belongs_to :dictionary
end