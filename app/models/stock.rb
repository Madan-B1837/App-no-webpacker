class Stock < ApplicationRecord
    def self.new_lookup(ticker_Symbol)
        client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:api_key],secret_token: 'sk_548ad2bee28e43288a11266bce9426eb',endpoint: 'https://cloud.iexapis.com/v1')
    begin
        new(ticker: ticker_Symbol, name: client.company(ticker_Symbol).company_name, last_price: client.price(ticker_Symbol))
    rescue => exception
        return nil
    end
end
end
