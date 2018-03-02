module HuobiApi
  module Accounts
    def accounts
      endpoint = "/v1/account/accounts"
      get(endpoint, {})
    end

    def balances
      endpoint = "/v1/account/accounts/#{HuobiApi.account_id}/balance"
      get(endpoint, {})
    end
  end
end
