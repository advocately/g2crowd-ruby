class CustomConnection < JsonApiClient::Connection
  def run(request_method, path, params = {}, headers = {})
    token = G2crowd::Base.api_token
    headers["Authorization"] = "Token token=#{token}"
    super(request_method, path, params, headers)
  end
end
