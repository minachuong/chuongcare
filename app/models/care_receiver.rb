class CareReceiver < ApplicationRecord
  has_many :careships
  has_many :users, through: :careships

  validates :first_name, presence: true
  validates :last_name, presence: true

  def generate_careship(user_id)
    self.careships.create({ user_id: user_id, care_receiver_id: self.id })
    return true
  end

  def full_name
    return [self.first_name, self.last_name].join(" ")
  end

  # def share(email)
  def share
    # share_to_user = User.find_by_email(email)
    # self.generate_careship(share_to_user.id)
    return true
  end
end
