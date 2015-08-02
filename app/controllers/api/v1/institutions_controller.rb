module Api
  module V1
    class InstitutionsController < ApplicationController

      def show
        render json: Institution.find(params[:id])
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
        params.require(:institution).permit(:name, :lng, :lat, :address, :email)
      end
    end
  end
end
