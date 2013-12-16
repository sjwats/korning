class SalesController < ApplicationController
  def index
    @trailing_sales = Sale.trailing_12_months.order(sale_date: :desc)
  end
end


