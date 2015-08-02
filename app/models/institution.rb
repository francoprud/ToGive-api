class Institution < ActiveRecord::Base
  has_many :petitions

  validates :name, :email, :lat, :lng, :address, presence: true
  validates :email, uniqueness: true
end
