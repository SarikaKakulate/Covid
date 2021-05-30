class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
    	t.string :name
    	t.string :address
        t.integer :mobno
        t.string :city
        t.string :symptoms
        t.integer :age
        t.string :gender
      
      t.timestamps
    end
     add_index("patients","name")
  end
end
