class WordSerializer < ActiveModel::Serializer
  attributes :id, :answer, :clue, :value
end
