class CreateVitals < ActiveRecord::Migration[7.0]
  def change
    create_table :vitals, if_not_exists: true do |t|
      t.references :incident, foreign_key: { on_delete :cascade }
      t.integer :pulse
      t.integer :respiration
      t.string :skin_condition
      t.boolean :pearl
      t.string :extra_notes

      t.timestamps
    end
  end
end
 