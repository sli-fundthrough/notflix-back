module Api
  module V1

    class UserMovieDataController < ApplicationController
      def index
        @users = User.order 'created_at DESC'
        render json: {status: 'SUCCESS', message:'Loaded users'}
      end
    end

  end
end

