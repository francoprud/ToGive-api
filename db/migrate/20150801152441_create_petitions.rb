class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.references :blood

      t.timestamps null: false
    end
  end
end