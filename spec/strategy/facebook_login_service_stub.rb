class FacebookLoginService
  def self.authenticate(data)
    return 200 if data[:username] == 'claudia'
    return 205 if data[:username] == 'jez'
    402
  end
end
