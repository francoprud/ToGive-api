class BloodSerializer < ActiveModel::Serializer
  attributes :type, :factor

  def type
    object.btype
  end
end
