class CreateCasualties < ActiveRecord::Migration[7.0]
  def change
    create_table :casualties, if_not_exists: true do |t|
      t.references :incident, foreign_key: { on_delete :cascade }
      t.string :name
      t.date :dob
      t.string :allergies
      t.string :gender
      t.string :illnesses
      t.string :blood_type

      t.timestamps
    end
  end
end
 