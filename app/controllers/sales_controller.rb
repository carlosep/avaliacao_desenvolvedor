class SalesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.create(sale_params)
    redirect_to @sale
  end
end
