class AddDonationsToPetition < ActiveRecord::Migration
  def change
    add_column :petitions, :donations, :integer, default: 0
  end
end
