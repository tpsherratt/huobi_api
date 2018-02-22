require 'huobi_api/version'
require 'huobi_api/client'

module HuobiApi
  @key = nil
  @secret = nil
  @accout_id = nil

  def self.key=(key)
    @key = key
  end

  def self.key
    @key
  end

  def self.secret=(secret)
    @secret = secret
  end

  def self.secret
    @secret
  end

  def self.account_id=(account_id)
    @account_id = account_id
  end

  def self.account_id
    @account_id
  end

  # configure like
  # HuobiApi.configure do |config|
  #   config.key = 'my key'
  #   // also secret and account_id
  # end
  def self.configure
    yield self
  end

  def self.client
    @client ||= Client.new
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send method, *args, &block
  end

  def self.respond_to?(method, include_private = false)
    client.respond_to?(method, include_private) || super(method, include_private)
  end
end
