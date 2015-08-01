class BloodSerializer < ActiveModel::Serializer
  attributes :id, :type, :factor

  def type
    object.btype
  end
end
