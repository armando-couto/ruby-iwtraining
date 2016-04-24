module Authentication

  def validate_password(password)
    @password = password if is_valid? password
  end

  def is_valid?(password)
    password == "123"
  end

end