class CreateDoctorSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_specialties do |t|
      t.references :doctor, foreign_key: true
      t.references :specialty, foreign_key: true
      t.timestamps null: false
    end
  end
end
