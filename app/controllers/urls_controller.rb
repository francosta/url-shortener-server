class UrlsController < ApplicationController

    def index
        urls = Url.all
        render json: urls
    end

    def show
        url = Url.find_by(shortened: params[:shortened])
        # byebug
        redirect_to url.original
    end

    def create
        url = Url.new(url_params)
        if url.save
            url.shortened = Url.shorten(url)
            url.save
            render json: url
        else
            render json: {error: 'Url could not be created'}, status: 400
        end
    end

    private

    def url_params
        params.permit(:id, :original, :shortened)
    end

end