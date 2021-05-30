class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :doctorname
      t.integer :dmobno
      t.string :dcity
      t.string :patient_id
      t.string :dmedicine
      t.string :ddescription
      t.timestamps
    end
  end
end
