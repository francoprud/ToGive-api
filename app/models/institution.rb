class Institution < ActiveRecord::Base
  has_many :petitions

  validates :institution_id, presence: true
end
