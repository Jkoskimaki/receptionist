class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :fist_name, :last_name, :specialty, presence: true
end
