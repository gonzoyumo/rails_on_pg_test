# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_migration_test_session',
  :secret      => '31b9fe43b829a5fc2b201c44c7c027c22f217f97a6e1cc482818aae7c26b98f322e2695d4e92dcd5dcbabb132763b53b1f3a0e909c28712050687375ab83c13d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
