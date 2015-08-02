class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :deadline, :donations, :longDescription

  has_one :blood
  has_one :institution

  def deadline
    object.deadline.iso8601
  end

  def longDescription
    object.description
  end

end
