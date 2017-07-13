class CareReceiver < ApplicationRecord
  has_many :careships
  has_many :users, through: :careships

  validates :first_name, presence: true
  validates :last_name, presence: true

  def generate_careship(user_id)
    self.careships.create({ user_id: user_id, care_receiver_id: self.id })
  end

end
