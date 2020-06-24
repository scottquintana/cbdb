class AddDescToBp < ActiveRecord::Migration[6.0]
  def change
    add_column :bean_profiles, :description, :string
  end
end
