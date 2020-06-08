class CreateBeans < ActiveRecord::Migration[6.0]
  def change
    create_table :beans do |t|
      t.string :name
      t.boolean :active, default: true
      t.references :roaster, index: true, foreign_key: true
      t.timestamps
    end
  end
end
