class Product < ApplicationRecord

  has_many :messages
  belongs_to :category
  has_many :order_comments, -> { order('created_at desc') } , class_name: Message
  has_many :line_products
  has_many :orders, through: :line_products
  ratyrate_rateable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :title, :body, :avatar, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { :greater_than_or_equal_to => 0.0 }

end
