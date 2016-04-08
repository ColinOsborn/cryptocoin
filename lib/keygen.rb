require 'base64'
require 'openssl'
require 'pry'

class KeyGen
  attr_reader :private_key_pem, :public_key_pem

  def initialize
    @key = generate_private_key
    @private_key_pem = generate_private_key.to_pem
    @public_key_pem = generate_public_key.to_pem
  end

  def generate_public_key
    @key.generate_key
  end

  private

  def generate_private_key
    OpenSSL::Pkey::RSA.generate(1024)
  end

end
