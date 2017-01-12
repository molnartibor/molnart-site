module ApplicationHelper
    def gravatar_for(user, options ={ size: 80})
    # see the gravata.com to see that the picture is based on the hash combined with the email 
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size} "
        image_tag(gravatar_url, alt: user.name, class: "img-circle")
    end
end