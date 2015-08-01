class Petition < ActiveRecord::Base
  belongs_to :blood
  belongs_to :institution

  validates :amount, presence: true

  scope :not_expired, -> {
    where("deadline >= ?", Time.now)
  }

  scope :sort_by_deadline, -> {
    order(:deadline)
  }
end
