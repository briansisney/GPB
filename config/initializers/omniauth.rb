OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
      :scope => 'email', :display => 'popup', :secure_image_url => 'true', :image_size => 'square', :info_fields => 'first_name,last_name,username'
end