class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :first_name, :last_name, :specialty, presence: true
end
