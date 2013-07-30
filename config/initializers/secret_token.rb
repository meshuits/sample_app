# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token-file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = '42fabcea91ae27ed8439431ae5aa7d2090bfd293b576e304eded573ee537d2f1fe401a1c4e517c11681ea7dba62066fffcfaf224a4d0d0ce4e9fa7bada1862a7'
