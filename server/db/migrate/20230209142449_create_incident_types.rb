class CreateIncidentTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :incident_types, if_not_exists: true do |t|
      t.string :name
      t.binary :image

      t.timestamps
    end
  end
end
 