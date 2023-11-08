class Word < ApplicationRecord
  validates :word, :translation, :presence => true

  belongs_to :dictionary
end