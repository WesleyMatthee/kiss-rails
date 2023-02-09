class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents, if_not_exists: true do |t|
      t.references :user, foreign_key: { on_delete :cascade }
      t.references :incident_type, foreign_key: { on_delete :cascade }
      t.integer :incident_duration
      t.string :location
      t.string :age_stage

      t.timestamps
    end
  end
end
 