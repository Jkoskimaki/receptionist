class Appointment < ApplicationRecord
  belongs_to :patient, dependent: :destroy
  belongs_to :doctor
  validates :date, :time, :apptype, presence: true

  def patient_info
    "#{self.date}"
    "\n"
    "#{self.time}"
    "\n"
    "#{self.apptype}"
  end
end
