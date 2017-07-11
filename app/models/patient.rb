class Patient < ApplicationRecord
  has_many :careships
  has_many :users, through: :careships

end
