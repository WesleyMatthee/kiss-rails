class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.integer :user_id
      t.integer :incident_type_id
      t.time :incident_duration
      t.timestamp :incident_time
      t.string :location
      t.integer :pulse
      t.timestamp :pulse_time
      t.integer :respirations
      t.timestamp :respirations_time
      t.text :skin_condition
      t.timestamp :skin_condition_time
      t.text :pearl
      t.timestamp :pearl_time
      t.text :extra_notes
      t.string :age_stage

      t.timestamps
    end
  end
end
