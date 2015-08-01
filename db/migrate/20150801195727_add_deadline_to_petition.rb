class AddDeadlineToPetition < ActiveRecord::Migration
  def change
    add_column :petitions, :deadline, :date
  end
end
