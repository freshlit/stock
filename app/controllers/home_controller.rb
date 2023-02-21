class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_31d2290eac384fa597b270b0e49ab050')

    if params[:ticker] == ''
      @nothing = "Hey! You forgot to Enter A Symbol"
      puts "========== Controller, " + @nothing
    elsif (params[:ticker])
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
        @url = StockQuote::Stock.logo(params[:ticker]).url

        puts "========== Controller, found = " + @stock.company_name + "=========="
      rescue
        @error = "Hey! That Stock Symbol Doesn't Exist"  
        puts "========== Controller, " + @error
      end
    else
      puts "========== Controller,,,,"
    end
    
  end

  def about
  
  end

end
