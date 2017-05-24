module UsersHelper
  def is_email(email)
    puts 'email'
    puts email
    /[a-z\d]+([._]?[a-z\d]+)+@[a-z\d]+(\.[a-z]+)+/i.match(email)
  end
end
