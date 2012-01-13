# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acourseinmindfulness_session',
  :secret      => '563859d8c40ed7a62c3279b740b49f94dd1285ac0723d0c8815317acbb30202395d119f3cab07853b9611ed44651b1c953a5f64be51b56b4a36bed3190c97f5f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
