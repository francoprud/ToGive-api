module Api
  module V1
    class InstitutionsController < ApplicationController

      def show
        render json: Institution.find(params[:id])
      end

      def index
        render json: Institution.all
      end
    end
  end
end
