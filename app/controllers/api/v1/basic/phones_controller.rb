module Api
  module V1
    module Basic
      class PhonesController < ApplicationController
        def create
          phone = ::CreateUserPhone.new(phone_params).call
          responce = { json: phone, serializer: ::PhonesSerrializer }
          render responce
        end

        private

        def phone_params
          params.require(:phone).permit(:user, :number)
        end
      end
    end
  end
end
