module Api
  module V1
    class PetitionsController < ApplicationController
      before_action :authenticate_with_token!, only: [:create, :update, :destroy]

      PER_PAGE_DEFAULT = 10

      def show
        petition = Petition.find_by(id: params[:id])
        render json: petition.present? ? petition : {}
      end

      def index
        petitions = Petition.search(params).page(params[:page])
                                                         .per(params[:per_page] || PER_PAGE_DEFAULT)
        render json: petitions,
               meta: pagination(petitions, params[:per_page] || PER_PAGE_DEFAULT)
      end

      def create
        petition = current_institution.petitions.build(petition_params)

        if petition.present?
          if petition.save
            render json: petition, status: 201, location: [:api, :v1, petition]
          else
            render json: { errors: petition.errors }, status: 400
          end
        else
          render json: { errors: 'the institution do not belong this petition'}, status: 400
        end
      end

      def update
        petition = current_institution.petitions.find(params[:id])

        if petition.present?
          if petition.update(petition_params)
            render json: petition, status: 201, location: [:api, :v1, petition]
          else
            render json: { errors: petition.errors }, status: 400
          end
        else
          render json: { errors: 'the instituion do no belong this petition'}, status: 400
        end
      end

      def destroy
        petition = current_institution.petitions.find(params[:id])

        if petition.present?
          petition.destroy
          head 204
        else
          render json: { errrors: 'the instituion do no belong this petition' }
        end
      end

      def confirm_donation
        petition = Petition.find(params[:petition_id])

        if petition.donate!
          render json: petition, status: 200, location: [:api, :v1, petition]
        else
          render json: { errors: "it's not possible to donate" }, status: 400
        end
      end

      private

      def petition_params
        params.require(:petition).permit(:amount, :blood_id, :deadline, :description)
      end
    end
  end
end
