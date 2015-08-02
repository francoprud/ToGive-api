class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :name, :longDescription, :shortDescription, :address, :location

  def shortDescription
    object.short_description
  end

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
