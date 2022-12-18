class CreateFullapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :fullapplications do |t|
      t.string :suffix
      t.string :first_name
      t.string :last_name
      t.string :SSN
      t.date :birthday
      t.string :street_address
      t.string :town
      t.string :zip_code
      t.string :state
      t.string :country
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
