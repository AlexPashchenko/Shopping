module ProductsHelper
  def link_to_product(product)
    link_to product.title, product_path(product)
  end
end
