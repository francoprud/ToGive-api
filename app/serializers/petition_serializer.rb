class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :amount

  has_one :blood
end
