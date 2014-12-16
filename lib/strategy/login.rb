class Login

  FACEBOOK_SUCCESSFUL = 200
  FACEBOOK_PENDING = 205

  GOOGLE_SUCCESSFUL = 202

  GITHUB_SUCCESSFUL = 201
  GITHUB_REVOKED = 402

  def self.with(params)
    if params[:method] == :facebook
      response = FacebookLoginService.authenticate(params[:data])
      return {status: true, message: 'successful'} if response == FACEBOOK_SUCCESSFUL
      return {status: false, message: 'authorization pending'} if response == FACEBOOK_PENDING
    end

    if params[:method] == :google
      params[:data][:username] = params[:data][:username] + '@gmail.com'
      response = GoogleLoginService.authenticate(params[:data])
      return {status: true, message: 'successful'} if response == GOOGLE_SUCCESSFUL
    end

    {status: false, message: 'not authorized'}
  end
end
