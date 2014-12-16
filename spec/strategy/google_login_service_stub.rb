class GoogleLoginService
  def self.authenticate(data)
    return 200 if data[:username] == 'claudia@gmail.com'
    402
  end
end
