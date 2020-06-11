class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  validates :first_name, :last_name, :specialty, presence: true

  def doc_info
    "#{self.first_name} #{self.last_name} -#{self.specialty}"

  end

end