class Patient < ApplicationRecord
  has_many :careships, inverse_of: :patient
  has_many :users, through: :careships
end
