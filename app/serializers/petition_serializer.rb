class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :deadline

  has_one :blood
  has_one :institution

  def deadline
    object.deadline.iso8601
  end
end
