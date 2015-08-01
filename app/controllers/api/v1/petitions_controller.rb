module Api
  module V1
    class PetitionsController < ApplicationController

      def index
        render json: Petition.all
      end
    end
  end
end
