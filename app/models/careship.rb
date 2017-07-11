class Careship < ApplicationRecord
  belongs_to :user
  belongs_to :patient, inverse_of: :careships
end
