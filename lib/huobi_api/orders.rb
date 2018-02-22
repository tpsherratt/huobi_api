module HuobiApi
  module Orders
    def new_order(amount:, side:, symbol:, type:, price: nil)
      options ={
        amount: amount.to_s,
        symbol: symbol,
        type: "#{side}-#{type}",
        source: 'api',
        'account-id': HuobiApi.account_id
      }
      options[:price] = price unless type.to_s == 'market'

      endpoint = '/v1/order/orders/place'
      post(endpoint, options)
    end

    def order_info(order_id:)
      endpoint = "/v1/order/orders/#{order_id}"
      get(endpoint, {})
    end

    def order_match_results(order_id:)
      endpoint = "/v1/order/orders/#{order_id}/matchresults"
      get(endpoint, {})
    end
  end
end
