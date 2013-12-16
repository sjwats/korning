class SalesController < ApplicationController
  def index
    @trailing_sales = Sale.trailing_15_months.order(sale_date: :desc)
  end
end


