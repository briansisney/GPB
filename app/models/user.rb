class User < ActiveRecord::Base
	has_many :books
	def self.from_omniauth(auth)
	  where(auth.slice(:uid)).first_or_initialize.tap do |user|
	    user.uid = auth.uid
	    user.first_name = auth.info.first_name
	    user.last_name = auth.info.last_name
	    user.email = auth.info.email
	    user.image = auth.info.image
	    user.oauth_token = auth.credentials.token
	    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	    user.points= 10
	    user.save!
	  end
	end
end
