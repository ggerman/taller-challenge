class Visitor < ApplicationRecord
  validates :lat, :lon, presence: true

end
