# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_and_pages_session',
  :secret      => '186eb80ff434c45522fbc227dea3edd8ba84ac7b5eab7fb09594a026a42b1a49b22a0727222ed03a3f5600308d8a6045e6f8809f5b6f260b48d76899a8d02023'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
