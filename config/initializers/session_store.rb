# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dvdripbot_session',
  :secret      => 'd808e3d9b55b1afa66bcdce8f5bb557dcede1ab6df820c65c5d24638d868af7b165de5821ffdd096a58ae4dba23737fd73d4eaf7126736ea8056ab8b23587fe2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
