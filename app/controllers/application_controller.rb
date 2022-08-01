class ApplicationController < ActionController::Base
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    include ActionController::Cookies

    skip_before_action :verify_authenticity_token


    private

    def render_invalid(i)
        render json: {errors: i.record.errors.full_messages },status: :unprocessable_entity
    end

    def render_not_found(e)
        render json: {error: "#{e.model} Not Found"}, status: :not_found
    end
end
