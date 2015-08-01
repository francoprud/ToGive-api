class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.string :type
      t.string :factor

      t.timestamps null: false
    end
  end
end
