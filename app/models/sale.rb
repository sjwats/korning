class Sale < ActiveRecord::Base
  belongs_to :employee

  def self.trailing_15_months
      Sale.where("sale_date >= ?", 15.months.ago)
  end
end
