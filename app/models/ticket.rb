class Ticket < ApplicationRecord
  has_many :comments

  validates :title, :description, :reporter,
            presence: true

  validates :terms_of_service,
            presence: { if: :require_terms_of_service }

  attribute :terms_of_service, :boolean
  attribute :require_terms_of_service, :boolean
end
