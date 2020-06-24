class RemoveActiveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :beans, :active
  end
end
