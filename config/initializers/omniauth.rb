Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :twitter, 'twQkdv5tE8k5HQdgAJRaEnh5W', 'TWgDnXdTE1m0JhkNkZkbnbfXq2jr6jQf00A4aNh1SxpW8Q0EKZ'
  {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
          :force_login => 'true',
          :lang => 'en'
      }
  }
end