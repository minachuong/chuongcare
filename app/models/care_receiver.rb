class CareReceiver < ApplicationRecord
  has_many :careships
  has_many :users, through: :careships

  validates :first_name, presence: true
  validates :last_name, presence: true

  def generate_careship(user_id)
    Careship.create({ user_id: user_id, care_receiver_id: self.id })
  end

  def full_name
    return [self.first_name, self.last_name].join(" ")
  end

end
