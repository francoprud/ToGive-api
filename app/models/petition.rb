class Petition < ActiveRecord::Base
  belongs_to :blood
  belongs_to :institution

  validates :amount, presence: true
end
