module Api
  module V1
    class BloodsController < ApplicationController
      def show
        render json: Blood.find(params[:id])
      end

      def index
        render json: Blood.all
      end
    end
  end
end
