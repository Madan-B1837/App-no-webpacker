class Stock < ApplicationRecord
    has_many :user_stocks
    has_many :users, through: :user_stocks

    validates :name, :ticker, presence: true
    def self.new_lookup(ticker_Symbol)
        client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:api_key],secret_token: 'sk_934884aa6ce1445eb0475216b68dabf6',endpoint: 'https://cloud.iexapis.com/v1')
    begin
        new(ticker: ticker_Symbol, name: client.company(ticker_Symbol).company_name, last_price: client.price(ticker_Symbol))
    rescue => exception
        return nil
    end
 end

 def self.check_db(ticker_Symbol)
        where(ticker: ticker_Symbol).first
 end
end
