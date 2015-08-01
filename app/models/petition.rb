class Petition < ActiveRecord::Base
  belongs_to :blood

  validates :amount, presence: true
end
