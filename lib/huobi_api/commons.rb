module HuobiApi
  module Commons
    def symbols
      endpoint = '/v1/common/symbols'
      get(endpoint, {})
    end

    def symbols_in_hadax
      endpoint = '/v1/hadax/common/symbols'
      get(endpoint, {})
    end

    def currencies
      endpoint = '/v1/common/currencys'
      get(endpoint, {})
    end

    def currencies_in_hadax
      endpoint = '/v1/hadax/common/currencys'
      get(endpoint, {})
    end

    def timestamp
      endpoint = '/v1/common/timestamp'
      get(endpoint, {})
    end
  end
end
