require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'base64'
require './lib/keygen'


class KeyGenTest < Minitest::Test

  def test_we_can_return_public_key
    keygen = KeyGen.new
    private_key = keygen.private_key
  end

end
