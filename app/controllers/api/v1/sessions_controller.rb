module Api
  module V1
    class SessionsController < ApplicationController

      def create
        institution = Institution.find_by(email: params[:session][:email])

        if institution && institution.valid_password?(params[:session][:password])
          sign_in institution, store: false
          institution.generate_authentication_token!
          institution.save
          render json: institution, serializer: InstitutionTokenSerializer
        else
          render json: { errors: 'Invalid email or password' }, status: 422
        end
      end

      def destroy
        institution = institution.find_by(auth_token: params[:id])
        if institution.present?
          institution.generate_authentication_token!
          institution.save
          head 204
        else
          render json: { errors: 'Invalid authentication token' }, status: 422
        end
      end
    end
  end
end
