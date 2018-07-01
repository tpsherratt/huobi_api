require 'huobi_api/network'
require 'huobi_api/accounts'
require 'huobi_api/orders'
require 'huobi_api/markets'
require 'huobi_api/commons'

module HuobiApi
  class Client
    include HuobiApi::Network
    include HuobiApi::Orders
    include HuobiApi::Accounts
    include HuobiApi::Markets
    include HuobiApi::Commons
  end
end
