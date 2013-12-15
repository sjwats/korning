class PopulateProductIdInSalesFromProducts < ActiveRecord::Migration
  def up
    add_column :sales, :product_id, :integer

    Sale.find_each do |sale|
      product = Product.find_by(name: sale.product_name)
      sale.update_attribute(:product_id, product.id)
    end
  end

  def down
    remove_column :sales, :product_id
  end
end
