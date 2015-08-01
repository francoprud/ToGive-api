class InstitutionSerializer < ActiveModel::Serializer
  attributes :id, :name, :longDescription, :shortDescription

  def shortDescription
    object.short_description
  end

  def longDescription
    object.description
  end
end
