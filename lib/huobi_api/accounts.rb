module HuobiApi
  module Accounts
    def accounts
      endpoint = "/v1/account/accounts"
      get(endpoint, {})
    end
  end
end
