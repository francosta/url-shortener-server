class UrlsController < ApplicationController

    def index
        urls = Url.all
        render json: urls
    end

    def show
        url = Url.find_by(shortened: url_params[:shortened])
        redirect_to url.original
    end

    def create
        if !url_params[:original].include?("http")
            original = "http://#{url_params[:original]}"
        else
            original = url_params[:original]
        end

        if Url.find_by(original: original)
            render json: Url.find_by(original: original)
        else
            url = Url.new(original: original)
            if url.save
                url.shortened = Url.shorten(url)
                url.save
                render json: url
            else
                render json: {error: "'#{url_params[:original]}' is not a valid url. "}, status: 400
            end
        end
    end

    private

    def url_params
        params.permit(:original, :shortened)
    end

end