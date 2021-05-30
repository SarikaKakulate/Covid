class AddPatientToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :patient
  end
end
