class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :name, :longDescription, :address, :location

  def longDescription
    object.description
  end

  def location
    {
      latitude: object.lat,
      longitude: object.lng
    }
  end
end
