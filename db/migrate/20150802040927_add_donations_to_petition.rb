class AddDonationsToPetition < ActiveRecord::Migration
  def change
    add_column :petitions, :donations, :integer, deafult: 0
  end
end
