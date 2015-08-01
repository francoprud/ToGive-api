class AddInstitutionIdToPetition < ActiveRecord::Migration
  def change
    add_column :petitions, :institution_id, :integer
  end
end
