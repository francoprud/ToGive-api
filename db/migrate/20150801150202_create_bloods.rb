class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.string :btype
      t.string :factor

      t.timestamps null: false
    end
  end
end
