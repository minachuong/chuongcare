class DailyRecord < ApplicationRecord
  belongs_to :care_receiver
  belongs_to :user
end
