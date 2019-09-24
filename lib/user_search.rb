require "user_search/version"

module UserSearch
  class Error < StandardError; end
  
  def self.date_search(start_date,end_date,email_domain={})
    user = User.all
    user.each do |u|
      if Date.parse(u.created_at.to_s) > Date.parse(start_date.to_s) && Date.parse(u.created_at.to_s) < Date.parse(end_date.to_s)
        found << u.email.downcase
      end
    end

    if email_domain != {}
      email_domain = email_domain.split(":")
      found.each do |f|
        email = f.split("@")
        if email_domain[1] == "ignore"
          found.delete(f[1])
        end
      end
    end

    return found

  end
end
