# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_democouch_session',
  :secret      => '3c04b336001fede34a17cee584d8360546e8c8b7bf35f3425ee80dce423945d62a488c90e0757caf0eb14e4842d270f17b4789bfcc3324a71a99b0c3cf8a4eb0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
