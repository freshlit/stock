class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_31d2290eac384fa597b270b0e49ab050')
    if params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      #puts @stock.company_name
    end
  end

  def about
  
  end

end
