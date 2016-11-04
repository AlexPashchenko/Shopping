class Message < ApplicationRecord
  extend Enumerize

  belongs_to :user
  belongs_to :product
  enumerize :status, in: [:appruved, :unapproved], default: :unapproved
  validates :text, presence: true
end
