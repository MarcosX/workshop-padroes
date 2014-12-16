class GithubLoginService
  def self.authenticate(data)
    return 201 if data[:username] == 'claudia'
    return 402 if data[:username] == 'derby'
    404
  end
end
