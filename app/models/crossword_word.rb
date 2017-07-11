class CrosswordWord < ApplicationRecord
  belongs_to :word
  belongs_to :crossword
end
