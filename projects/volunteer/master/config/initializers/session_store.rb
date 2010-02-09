# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_master_session',
  :secret      => '9e1d6c957e0d8e1c2ed93c12994548774ea3478305efbfc31377f0115e86aa0af3f98aa7512466676a4c6b98aa46dcbffd19ca707c5e1664e62e3e3c81d53085'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
