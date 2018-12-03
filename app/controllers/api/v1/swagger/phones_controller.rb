module Api
  module V1
    module Swagger
      class PhonesController < Api::V1::Basic::PhonesController
        swagger_controller :phones_controller, 'PhonesController'

        swagger_api :create do
          summary 'Creates phone numbers'
          param :form, 'phone[user]', :string, :optional, 'User (name, email or other identifier)'
          param :form, 'phone[number]', :string, :optional, 'Number'

          response :ok
          response :unprocessable_entity
        end
      end
    end
  end
end
