class AddTypeToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :type, :string
  end
end
