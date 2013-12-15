class PopulateProductsFromSales < ActiveRecord::Migration
  def up
    Sale.find_each do |sale|
      product = sale.product_name
      product = Product.find_or_initialize_by(name: product)
      product.save
    end
  end

  def down
    Product.delete_all
  end
end

