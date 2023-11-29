class Word < ApplicationRecord
  validates :word, :translation, :presence => true

  belongs_to :wordbook
end