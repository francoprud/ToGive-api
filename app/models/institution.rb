class Institution < ActiveRecord::Base
  has_many :petitions

  validates :name, :description, :lat, :lng, :address, presence: true
  validates :name, uniqueness: true
end
