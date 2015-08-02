class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :location, :email

  def location
    {
      latitude: object.lat,
      longitude: object.lng
    }
  end
end
