class GithubStrategy 
  GITHUB_SUCCESSFUL = 201
  GITHUB_REVOKED = 402
  GITHUB_UNSUCCESSFUL = 404
  
  def self.authenticate(params)
    response = GithubLoginService.authenticate(params)
    return {status: true, message: 'successful'} if response == GITHUB_SUCCESSFUL
    return {status: false, message: 'revoked authorization'} if response == GITHUB_REVOKED
    return {status: false, message: 'not authorized'} if response == GITHUB_UNSUCCESSFUL
  end
end