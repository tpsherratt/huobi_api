module HuobiApi
  module Markets
    def kline(symbol: nil, period: nil, size: 150)
      options = {
        symbol: symbol,
        period: period,
        size: size
      }

      endpoint = '/market/history/kline'
      get(endpoint, options)
    end

    def ticker(symbol: nil)
      options = {
        symbol: symbol
      }

      endpoint = '/market/detail/merged'
      get(endpoint, options)
    end

    def tickers
      endpoint = '/market/tickers'
      get(endpoint, {})
    end

    def market_depth(symbol: nil, type: nil)
      options = {
        symbol: symbol,
        type: type
      }

      endpoint = '/market/depth'
      get(endpoint, options)
    end

    def trade(symbol: nil)
      options = {
        symbol: symbol
      }

      endpoint = '/market/trade'
      get(endpoint, options)
    end

    def orderbook(symbol: nil, size: 1)
      options = {
        symbol: symbol,
        size: size
      }

      endpoint = '/market/history/trade'
      get(endpoint, options)
    end

    def market_detail(symbol: nil)
      options = {
        symbol: symbol
      }

      endpoint = '/market/detail'
      get(endpoint, options)
    end
  end
end
