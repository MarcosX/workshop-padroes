require_relative 'facebook_login_service_stub'
require_relative 'google_login_service_stub'
require_relative 'github_login_service_stub'

describe Login do
  context 'when login via facebook' do
    it 'logs in successfuly for Claudia' do
      params = {
                 method: :facebook,
                 data: {
                   username: 'claudia',
                 }
               } 
      status = Login.with(params)[:status]
      expect(status).to be true
    end
    
    it 'logs in unsuccessfuly for Derby' do
      params = {
                 method: :facebook,
                 data: {
                   username: 'derby',
                 }
               } 
      status = Login.with(params)[:status]
      expect(status).to be false
    end

    
    it 'asks for permition before loggin in for Jez' do
      params = {
                 method: :facebook,
                 data: {
                   username: 'jez',
                 }
               } 
      status = Login.with(params)[:status]
      message = Login.with(params)[:message]
      expect(status).to be false
      expect(message).to eq 'authorization pending'
    end
  end

  context 'when login via google' do
    it 'logs successfuly for Claudia' do
      params = {
                 method: :google,
                 data: {
                   username: 'claudia',
                 }
               } 
      status = Login.with(params)[:status]
      expect(status).to be true
    end
    
    it 'logs in unsuccessfuly for Derby' do
      params = {
                 method: :google,
                 data: {
                   username: 'derby',
                 }
               } 
      status = Login.with(params)[:status]
      expect(status).to be false
    end
  end

  # TODO
  # Implementar login via github
  # para claudia: sucesso com mensagem 'successful'
  # para derby: falha com mensagem 'revoked authorization'
  # para jez: falha com mensagem 'not authorized'
end
