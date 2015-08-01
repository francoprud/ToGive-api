class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :shortDescription

  def shortDescription
    object.short_description
  end
end
