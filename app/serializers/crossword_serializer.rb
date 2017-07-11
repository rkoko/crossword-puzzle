class CrosswordSerializer < ActiveModel::Serializer
  attributes :id, :name,
  belong_to :user, serializer: UserCrosswordSerializer
end
