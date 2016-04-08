require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'base64'
require './lib/wallet'

class WalletTest < Minitest::Test

  def test_wallet_dir_exists?
    @file_path = Dir.pwd + '/test/support/.wallet'
  end

  def teardown
    FileUtils.rm_rf(@file_path) if File.directory?(file_path)
  end

  def test_can_create_wallet_directory
    refute File.directory?(@file_path)

    wallet = Wallet.new("/test/support")

    assert File.directory(@File_path)
  end

  def test_we_can_create_public_key_pem_file
    wallet = Wallet.new('/test/support')
    public_key_pem = @file_path + "/public_key.pem"

    assert File.exist?(public_key_path)
  end

  def test_we_can_create_private_key_pem_file
    wallet = Wallet.new('/test/support')
    private_key_pem = @file_path + "/private_key.pem"

    assert File.exist?(private_key_path)
  end

end
