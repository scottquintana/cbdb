class CreateRoasterContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :roaster_contacts do |t|
      t.references :roaster, null: false, foreign_key: true

      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :website
      
      t.timestamps
    end
  end
end
