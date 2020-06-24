class AddStatusToBeans < ActiveRecord::Migration[6.0]
  def change
    add_column :beans, :status, :integer
  end
end
