require './lib/keygen'
require 'pry'
require 'tmpdir'

class Wallet

  def initialize(path)
    @file_path = file_path
  end

  def wallet_exists?
    unless File.exist?('~/.wallet/public_key.pem')
    else File.write('public_key.pem', public_key.to_pem)
      public_key_from_file = OpenSSL::PKey.read(File.read('public_key.pem')
    end
  end
end

# keys?
# prints the public

To start with a basic wallet implementation,
write a program which, when run, will look for a special set of wallet files on the user's computer. We'll use a
common format for serializing RSA keys called .pem,
so let's assume these files are
~/.wallet/public_key.pem and
 ~/.wallet/private_key.pem,
 respectively.
