class SalesController < ApplicationController
   def index
    @sales = Sale.where(sale_date BETWEEN :start AND :end, start: 15.months.ago, end: (Time.now() - 12.months.ago)
  end
end
