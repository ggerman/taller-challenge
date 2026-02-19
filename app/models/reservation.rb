class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :book

  validates :email,
            presence: true,
            format: URI::MailTo::EMAIL_REGEXP
end
