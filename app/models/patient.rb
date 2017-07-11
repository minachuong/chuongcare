class Patient < ApplicationRecord
  has_many :careships, inverse_of: :patient
  has_many :users, through: :careships

  validates :first_name, presence: true
  validates :last_name, presence: true

  def set_careship(user_id)
    self.careships.create({ user_id: user_id, patient_id: self.id })
  end

end
