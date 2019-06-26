module Api
  module V1
    module Users
      class TransactionsController < ApplicationController
        before_action :authenticate_user!
        before_action :authorize_user!

        def index
          @transactions = Transaction.where(user_id: params[:user_id])

          render json: @transactions
        end

        private

        def authorize_user!
          return forbidden unless current_user.id == params[:user_id].to_i
        end
      end
    end
  end
end
