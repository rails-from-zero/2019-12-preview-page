class Ticket < ApplicationRecord
  has_many :comments

  validates :title, :description, :reporter,
            presence: true
end
