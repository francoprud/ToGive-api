class AddAuthenticationTokenToInstitutions < ActiveRecord::Migration
  def change
    add_column :institutions, :auth_token, :string, default: ''
    add_index :institutions, :auth_token, unique: true
  end
end
