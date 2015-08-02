class Petition < ActiveRecord::Base
  belongs_to :blood
  belongs_to :institution

  validates :amount, :institution, :blood, :description, presence: true

  scope :not_expired, -> {
    where("deadline >= ?", Time.now)
  }

  scope :sort_by_deadline, -> {
    order(:deadline)
  }

  scope :not_completed, -> {
    where("amount > donations")
  }

  def self.search(params = {})
    petitions = params[:institution_id].present? ? Petition.where(institution_id: params[:institution_id]) : Petition.all
    petitions = petitions.where(blood_id: params[:blood_id]) if params[:blood_id].present?
    petitions = petitions.not_expired if params[:not_expired].present?
    petitions = petitions.not_completed if params[:not_completed].present?
    petitions.sort_by_deadline
  end

  def donate!
    if donations < amount
      self.donations += 1
      save
      true
    else
      false
    end
  end
end
