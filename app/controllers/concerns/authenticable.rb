module Authenticable
  include RequestHelper

  def current_institution
    @current_institution ||= Institution.find_by(auth_token: fetch_authorization_header)
  end

  def authenticate_with_token!
    render json: { errors: "Not authenticated" }, status: :unauthorized unless institution_signed_in?
  end

  def institution_signed_in?
    current_institution.present?
  end
end
