class GoogleStrategy 
  GOOGLE_SUCCESSFUL = 202
  GOOGLE_UNSUCCESSFUL = 402
  
  def self.authenticate(params)
    params[:username] = params[:username] + '@gmail.com'
    response = GoogleLoginService.authenticate(params)
    return {status: true, message: 'successful'} if response == GOOGLE_SUCCESSFUL
    return {status: false, message: 'unsuccessful'} if response == GOOGLE_UNSUCCESSFUL
  end
end