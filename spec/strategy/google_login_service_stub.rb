class GoogleLoginService
  def self.authenticate(data)
    return 202 if data[:username] == 'claudia@gmail.com'
    402
  end
end
