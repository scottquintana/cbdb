class CreateBeanProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :bean_profiles do |t|
      t.references :bean, null: false, foreign_key: true

      t.timestamps

      t.string :region
      t.string :processing
      t.string :notes
      t.string :altitude
      t.integer :roast_level
      t.boolean :single_origin
      
    end
  end
end
