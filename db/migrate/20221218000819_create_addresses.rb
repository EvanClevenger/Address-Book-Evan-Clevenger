class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :town
      t.string :ZIP_code
      t.string :state
      t.string :country
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
