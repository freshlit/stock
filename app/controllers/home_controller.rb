class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_31d2290eac384fa597b270b0e49ab050')
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to Enter A Symbol"
    elsif (params[:ticker])
      @stock = StockQuote::Stock.quote(params[:ticker])
      puts "========== Controller, value = " + $stock.company_name + "=========="
    else
      puts "========== Controller, Params is NULL =========="
    end
  end

  def about
  
  end

end
