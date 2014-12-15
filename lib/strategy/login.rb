class Login
  def self.with(params)
    if params[:method] == :facebook
      response = FacebookLoginService.authenticate(params[:data])
      return {status: true, message: 'successful'} if response == 200
      return {status: false, message: 'authorization pending'} if response == 205
    end

    if params[:method] == :google
      params[:data][:username] = params[:data][:username] + '@gmail.com'
      response = GoogleLoginService.authenticate(params[:data])
      return {status: true, message: 'successful'} if response == 200
    end

    {status: false, message: 'not authorized'}
  end
end
