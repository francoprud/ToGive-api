module RequestHelper
  def fetch_authorization_header
    request.headers['Authorization']
  end
end
