module Api
  module V1
    class PetitionsController < ApplicationController

      PER_PAGE_DEFAULT = 10

      def index
        petitions = Petition.all.page(params[:page]).per(params[:per_page] || PER_PAGE_DEFAULT)
        render json: petitions,
               meta: pagination(petitions, params[:per_page] || PER_PAGE_DEFAULT)
      end
    end
  end
end
