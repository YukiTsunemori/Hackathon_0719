# app/helpers/users_helper.rb
require 'digest/md5'
module UsersHelper
  def gravatar_for(user, size: 80)
    email = user.email.downcase
    hash = Digest::MD5.hexdigest(email)
    url = "https://secure.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(url, alt: user.name || user.email, class: "gravatar rounded-circle")
  end
end
