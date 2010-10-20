# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mutual matrimonials_session',
  :secret      => 'c6f9d6c63e7fb6b508695e2566d94a5e919db936aca8ed29f96fb64e820356ea45c2093d19c0f6476662304a87ab0fdaea465506bc03419397184cabe9dcc7a1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
