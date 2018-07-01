# HuboiApi

A ruby wrapper for the Huobi Pro API

So far just a few endpoints have been implemented, but adding more is
simple and welcome. See `lib/huobi_api/orders.rb` and [the huobi docs](https://github.com/huobiapi/API_Docs_en/wiki/REST_Reference) to get started.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'huboi_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install huboi_api

## Usage

### Config
```ruby
HuobiApi.configure do |config|
  # confusingly the account_id is got from the API - see below - it is different from the UID show on the website
  config.account_id = 123456
  # key and secret from API Management page on Huobi website
  config.key = 'xxxxxxxx-xxxxxxxx-xxxxxxxx-xxxxx'
  config.secret = 'yyyyyyyy-yyyyyyyy-yyyyyyyy-yyyyy'
end
```

### Making calls
```ruby
HuobiApi.new_order(amount: 100, side: :sell, symbol: :xrpbtc, type: :market)
# => {"status"=>"ok", "data"=>"12345678"}

HuobiApi.order_info(order_id: 12345678)
# => {"account-id"=>"123456", "amount"=>"100", "source"=>"api", "symbol"=>"xrpbtc", "type"=>"buy-market"}
```

### Getting your account_id
```ruby
HuobiApi.configure do |config|
  config.key = 'xxxxxxxx-xxxxxxxx-xxxxxxxx-xxxxx'
  config.secret = 'yyyyyyyy-yyyyyyyy-yyyyyyyy-yyyyy'
end

HuobiApi.accounts
# => {"status"=>"ok", "data"=>[{"id"=>123456, "type"=>"spot", "subtype"=>"", "state"=>"working"}]}
```
Your `account_id` is 123456.

### Account API
```ruby
# Balances
HuobiApi.balances

# Balances in Hadax
HuobiApi.balances_in_hadax
```

### Market API
```ruby
# Candlestick
HuobiApi.kline(symbol: :xrpbtc, period: '15min', size: 150)

# Ticker
HuobiApi.ticker(symbol: :xrpbtc)

# Tickers
HuobiApi.tickers

# Market Depth
HuobiApi.market_depth(symbol: :xrpbtc, type: :step5)

# Trade Detail
HuobiApi.trade(symbol: :xrpbtc)

# Orderbook
HuobiApi.orderbook(symbol: :xrpbtc, size: 1)

# Market Detail in 24 hours
HuobiApi.market_detail(symbol: :xrpbtc)
```

### Commons
```ruby
# Symbols
HuobiApi.symbols

# Symbols in Hadax
HuobiApi.symbols_in_hadax

# Currencies
HuobiApi.currencies

# Currencies in Hadax
HuobiApi.currencies_in_hadax

# Timestamp
HuobiApi.timestamp
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests (though you may need to write some tests first). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/huboi_api.
