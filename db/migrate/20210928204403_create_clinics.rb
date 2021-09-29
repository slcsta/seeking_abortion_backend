class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :phone_number
      t.belongs_to :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
