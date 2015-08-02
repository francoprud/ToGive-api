class InstitutionTokenSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :location, :email, :auth_token

  def location
    {
      latitude: object.lat,
      longitude: object.lng
    }
  end
end
