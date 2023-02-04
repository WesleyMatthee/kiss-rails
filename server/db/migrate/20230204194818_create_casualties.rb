class CreateCasualties < ActiveRecord::Migration[7.0]
  def change
    create_table :casualties do |t|
      t.string :name
      t.date :dob
      t.string :allergies
      t.string :gender
      t.string :illnesses
      t.string :blood_types

      t.timestamps
    end
  end
end
