module Api
  module V1
    class PetitionsController < ApplicationController

      PER_PAGE_DEFAULT = 10

      def show
        render json: Petition.find(params[:id])
      end

      def index
        petitions = Petition.all.page(params[:page]).per(params[:per_page] || PER_PAGE_DEFAULT)
        render json: petitions,
               meta: pagination(petitions, params[:per_page] || PER_PAGE_DEFAULT)
      end

      def create
        petition = Petition.new(petition_params)

        if petition.save
          render json: petition, status: 201, location: [:api, :v1, petition]
        else
          render json: { errors: petition.errors }, status: 400
        end
      end

      private

      def petition_params
        params.require(:petition).permit(:amount, :blood_id)
      end
    end
  end
end
