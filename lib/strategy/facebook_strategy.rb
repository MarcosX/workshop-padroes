class FacebookStrategy 
  FACEBOOK_SUCCESSFUL = 200
  FACEBOOK_PENDING = 205
  FACEBOOK_UNSUCCESSFUL = 402
  
  def self.authenticate(params)
    response = FacebookLoginService.authenticate(params)
    return {status: true, message: 'successful'} if response == FACEBOOK_SUCCESSFUL
    return {status: false, message: 'authorization pending'} if response == FACEBOOK_PENDING
    return {status: false, message: 'not authorized'} if response == FACEBOOK_UNSUCCESSFUL
  end
end