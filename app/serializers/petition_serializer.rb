class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :institution

  has_one :blood

  def institution
    'Hospital de niños'
  end
end
