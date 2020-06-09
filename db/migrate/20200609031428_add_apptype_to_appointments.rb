class AddApptypeToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :apptype, :string
  end
end
