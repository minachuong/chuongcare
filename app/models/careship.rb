class Careship < ApplicationRecord
  belongs_to :user
  belongs_to :care_receiver
end
