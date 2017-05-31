module UsersHelper
  def is_email(email)
    /^([a-z0-9][._]?)+[a-z0-9]@([a-z0-9\-])+((\.)?[a-z0-9]){2}\.[a-z]{2,3}$/i.match(email)
  end
end
