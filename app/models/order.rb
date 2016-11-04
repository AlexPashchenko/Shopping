class Order < ApplicationRecord
  has_many :line_products
  has_many :products, through: :line_products
  belongs_to :user

  def total_price

    @total_price||= line_products.to_a.sum { |item| item.product.price }
    end
  end

