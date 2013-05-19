module ApplicationHelper
	def avatar_url(user)
	    default_url = "http://farm9.staticflickr.com/8538/8753843850_009c925dca_z.jpg"
	    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
	    "http://gravatar.com/avatar/#{gravatar_id}.png?s=180&r=pg&d=#{CGI.escape(default_url)}"
	end

	def asset_url asset
  		"#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
	end
end
