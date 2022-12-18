class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :suffix
      t.string :first_name
      t.string :last_name
      t.date :birtday
      t.text :comment

      t.timestamps
    end
  end
end
