class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def show
  end

  def new
    @sale = Sale.new
  end

  def create
    document = params[:sale][:file].read.force_encoding('UTF-8')
    document = document.split("\n")
    document.shift
    @data = []
    document.each {|i| @data.push(i.split("\t")) }
    @data.each do |item|
      @sale = Sale.new
      @sale.customer = item[0]
      @sale.description = item[1]
      @sale.price = item[2]
      @sale.quantity = item[3]
      @sale.address = item[4]
      @sale.supplier = item[5]
      @sale.total = item[2].to_f * item[3].to_i
      @sale.save
    end
    redirect_to sales_path
  end

  private
  def sale_params

  end
end
