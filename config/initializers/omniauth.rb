Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['490720084378790'], ENV['5ae73377399a6e620e7c8a13173de26a'],
      :scope => 'email', :display => 'popup', :secure_image_url => 'true', :image_size => 'square', :info_fields => 'first_name,last_name,username'
end