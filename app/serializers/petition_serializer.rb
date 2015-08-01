class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :institution, :short_description

  has_one :blood

  def institution
    "Boston Children's Hospital"
  end

  def short_description
    'A very short description.'
  end
end
