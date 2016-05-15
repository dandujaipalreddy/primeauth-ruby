class Primeauth
  require 'http'
  def self.createAuth(email,mobile,ip,token,secret,client_id,comments)
      response = HTTP.post("https://www.primeauth.com/api/v1/create/authreq.json",:form => {
      :email_id => email,
      :mobile => mobile,
      :client_id => client_id,
      :ip_addr => ip,
      :token => token,
      :secret => secret,
      :comments => comments
      })
      return response.body
  end

  def self.checkAuth(auth_id,token,secret)
      response = HTTP.post("https://www.primeauth.com/api/v1/check/id.json",:form => {
      :id => auth_id,
      :token => token,
      :secret => secret
      })
      return response.body
  end
end
