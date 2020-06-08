class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  validates :first_name, :last_name, presence: true
end

# create_table "patients", force: :cascade do |t|
#   t.string "first_name"
#   t.string "last_name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end