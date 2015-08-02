module Api
  module V1
    class InstitutionsController < ApplicationController

      def show
        institution = Institution.find_by(id: params[:id])
        render json: institution.present? ? institution : {}
      end

      def index
        render json: Institution.all
      end

      def create
        institution = Institution.new(institution_params)

        if institution.save
          render json: institution, status: 201, location: [:api, :v1, institution]
        else
          render json: { errors: institution.errors }, status: 400
        end
      end

      private

      def institution_params
        params.require(:institution).permit(:name, :lng, :lat, :address, :email, :password, :password_confirmation)
      end
    end
  end
end
