require 'huobi_api/network'
require 'huobi_api/accounts'
require 'huobi_api/orders'

module HuobiApi
  class Client
    include HuobiApi::Network
    include HuobiApi::Orders
    include HuobiApi::Accounts
  end
end
