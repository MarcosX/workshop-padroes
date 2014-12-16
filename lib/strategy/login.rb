class Login
  def self.with(params)
  
    return FacebookStrategy.authenticate(params[:data]) if params[:method] == :facebook
    return GoogleStrategy.authenticate(params[:data]) if params[:method] == :google
    return GithubStrategy.authenticate(params[:data]) if params[:method] == :github
  
  end
end
