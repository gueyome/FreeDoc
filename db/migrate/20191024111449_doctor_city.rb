class DoctorCity < ActiveRecord::Migration[6.0]
  def change
    add_reference :doctors, :city, foreign_key: true
  end
end
