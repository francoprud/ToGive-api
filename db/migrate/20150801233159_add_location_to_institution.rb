class AddLocationToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :lat, :float
    add_column :institutions, :lng, :float
    add_column :institutions, :address, :string
  end
end
